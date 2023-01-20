const db = require("./connector");
const { COLUMNS, COLUMN_QUERY_TYPE } = require("./constants");
const { camelToUnderline, underlineToPascal } = require("../util");

// 将常用单表sql封装成api，传入参数可自动拼接生成sql
class BaseApi {
  constructor(table) {
    this.table = table;
    this.columns = COLUMNS[table];
    this.columnsWithId = this.columns.concat('id');
  }
  // 返回实体的字段名-值数组
  getColValList(entity) {
    camelToUnderline(entity);
    return this.columns.map((column) => {
      const value = entity[column];
      let val;
      if (column === "create_time") {
        val = "CURRENT_TIMESTAMP";
      } else if (value === void 0) {
        val = "null";
      } else {
        // 若字段值不为空，只有字符串、数字两种类型
        if (typeof value === "string") {
          val = `'${value}'`;
        }
      }
      return [column, val];
    });
  }

  // 返回实体的值数组
  getValueList(entity) {
    return this.getColValList(entity).map((pair) => pair[1]);
  }

  insertOne(entity) {
    const valueList = this.getValueList(entity);
    const sql = `insert into "${this.table}" (${this.columns.join()}) values (${valueList.join()});`;
    return db.query(sql);
  }

  insertMany(entities) {
    const valueLists = entities.map((entity) => {
      return `(${this.getValueList(entity).join()})`;
    });
    const sql = `insert into "${this.table}" (${this.columns.join()}) values ${valueLists.join()};`;
    return db.query(sql);
  }

  deleteOne(id) {
    const sql = `delete from "${this.table}" where id = ${id}`;
    return db.query(sql);
  }

  deleteMany(ids) {
    const sql = `delete from "${this.table}" where id in (${ids.join()})`;
    return db.query(sql);
  }

  updateOne(entity, id) {
    const setSql = this.getColValList(entity)
      .filter((pair) => pair[0] !== 'create_time')
      .map((pair) => {
        return `${pair[0]} = ${pair[1]}`;
      })
      .join();
    const sql = `update "${this.table}" set ${setSql} where id = ${id}`;
    return db.query(sql);
  }

  async updateMany(entities) {
    for (let entity of entities) {
      await this.updateOne(entity, entity.id);
    }
  }

  // 查询所有结果
  list(columns = this.columns) {
    const sql = `select ${this.columnsWithId.join()} from "${this.table}"`;
    return db.query(sql);
  }

  // 分页 + 条件过滤
  page(filter, columns = this.columns) {
    // page-页数，size-每页显示数量，sorted-排序字段，order-升序/降序，query-查询条件
    const { page = 1, size = 8, sorted, order = "asc", query } = filter;
    camelToUnderline(query);
    const querySql = this.columnsWithId.map((col) => {
      const condition = query[col];
      if (condition === void 0 || condition === null) return;
      const type = COLUMN_QUERY_TYPE[this.table][col];
      switch (type) {
        case -1: {
          return;
        }
        case 0: {
          return `${col} = ${condition}`;
        }
        case 1: {
          return `${col} like '%${condition}%'`
        }
        case 2: {
          let sqlList = [];
          const { start, end } = condition;
          if (start) {
            sqlList.push(`${col} > ${start}`);
          }
          if (end) {
            sqlList.push(`${col} < ${end}`);
          }
          return sqlList.join(" and ");
        }
        case 3: {
          return `col in (${condition.join()})`;
        }
      }
    })
    .filter((part) => part)
    .join(' and ');
    let sql = `select ${columns.join()} from "${this.table}"`;
    if (querySql) sql += ` where ${querySql}`;
    if (sorted && this.columnsWithId.includes(sorted)) {
      sql += ` order by ${sorted} ${order}`;
    }
    sql += ` limit ${(page - 1) * size}, ${size}`;
    return db.query(sql);
  }
}

const TableApiCollection = Object.keys(COLUMNS).reduce((pre, cur) => {
  pre[underlineToPascal(cur)] = new BaseApi(cur);
  return pre;
}, {});

module.exports = TableApiCollection;
