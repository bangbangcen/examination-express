const db = require("./connector");
const { COLUMNS, COLUMN_QUERY_TYPE } = require("./constants");
const { camelToUnderline, underlineToPascal, underlineToCamel, getPosListStr, getCurTime } = require("../util");

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
        val = getCurTime();
      } else if (value === void 0) {
        val = null;
      } else {
        val = value;
      }
      return [column, val];
    });
  }

  // 返回实体的字段数组
  getColList(entity) {
    return this.getColValList(entity).map((pair) => pair[0]);
  }

  // 返回实体的值数组
  getValueList(entity) {
    return this.getColValList(entity).map((pair) => pair[1]);
  }

  insertOne(entity) {
    const valueList = this.getValueList(entity);
    const sql = `insert into "${this.table}" (${this.columns.join()}) values (${getPosListStr(1, valueList.length)}) returning id;`;
    return db.query(sql, valueList);
  }

  insertMany(entities) {
    const len = this.getValueList(entities[0]).length;
    const allValues = entities.map((entity) => this.getValueList(entity)).flat();
    const posListStr = entities.map((entity, i) => `(${getPosListStr(i * len + 1, len)})`).join(', ');
    const sql = `insert into "${this.table}" (${this.columns.join()}) values ${posListStr};`;
    console.log(sql, allValues);
    return db.query(sql, allValues);
  }

  deleteOne(id) {
    const sql = `delete from "${this.table}" where id = $1`;
    return db.query(sql, [id]);
  }

  deleteMany(ids) {
    const sql = `delete from "${this.table}" where id in (${getPosListStr(1, ids.length)})`;
    return db.query(sql, ids);
  }

  updateOne(entity, id) {
    let count = 0;
    const colValList = this.getColValList(entity).filter((pair) => pair[0] !== 'create_time');
    const setSql = colValList
      .map((pair) => {
        count++;
        return `${pair[0]} = $${count}`;
      })
      .join();
    const sql = `update "${this.table}" set ${setSql} where id = $${count + 1}`;
    console.log(sql, [...colValList.map(pair => pair[1]), id])
    return db.query(sql, [...colValList.map(pair => pair[1]), id]);
  }

  async updateMany(entities) {
    for (let entity of entities) {
      await this.updateOne(entity, entity.id);
    }
  }

  // 查询所有结果
  async list(columns = this.columnsWithId) {
    const sql = `select ${columns.join()} from "${this.table}"`;
    let result = await db.query(sql);
    underlineToCamel(result.rows);
    return result;
  }

  // 分页 + 条件过滤
  page(filter, columns = this.columns) {
    // page-页数，size-每页显示数量，sorted-排序字段，order-升序/降序，query-查询条件
    const { page = 1, size = 8, sorted, order = "asc", query } = filter;
    camelToUnderline(query);
    let count = 1, allValues = [];
    const querySql = this.columnsWithId.map((col) => {
      const condition = query[col];
      if (condition === void 0 || condition === null) return;
      const type = COLUMN_QUERY_TYPE[this.table][col];
      switch (type) {
        case -1: {
          return;
        }
        case 0: {
          allValues.push(condition);
          return `${col} = $${count++}`;
        }
        case 1: {
          allValues.push(`%${condition}%`);
          return `${col} like $${count++}`
        }
        case 2: {
          let sqlList = [];
          const { start, end } = condition;
          if (start) {
            allValues.push(start);
            sqlList.push(`${col} > $${count++}`);
          }
          if (end) {
            allValues.push(end);
            sqlList.push(`${col} < $${count++}`);
          }
          return sqlList.join(" and ");
        }
        case 3: {
          const len = condition.length;
          allValues = allValues.concat(condition);
          const sql = `col in (${getPosListStr(count, len)})`;
          count += len;
          return sql;
        }
      }
    })
    .filter((part) => part)
    .join(' and ');
    let sql = `select ${columns.join()} from "${this.table}"`;
    if (querySql) sql += ` where ${querySql}`;
    if (sorted && this.columnsWithId.includes(sorted) && /asc|desc/.test(order)) {
      sql += ` order by ${sorted} ${order}`;
    }
    sql += ` limit $${count++}, $${count++}`;
    allValues.push((page - 1) * size, size);
    return db.query(sql, allValues);
  }
}

const TableApiCollection = Object.keys(COLUMNS).reduce((pre, cur) => {
  pre[underlineToPascal(cur)] = new BaseApi(cur);
  return pre;
}, {});

module.exports = TableApiCollection;
