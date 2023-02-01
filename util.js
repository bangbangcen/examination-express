// 对象的所有属性由小驼峰命名转为下划线命名
function camelToUnderline(objs) {
  function help(entity) {
    Object.keys(entity).forEach(prop => {
      const newProp = prop.replace(/[A-Z]/g, (ch) => '_' + ch.toLowerCase());
      if (newProp !== prop) {
        entity[newProp] = entity[prop];
        delete entity[prop];
      }
    });    
  }
  if (Array.isArray(objs)) {
    objs.forEach((obj) => help(obj));
  }
  else help(objs);
}

// 对象的所有属性由下划线命名转为小驼峰命名
function underlineToCamel(objs) {
  function help(entity) {
    Object.keys(entity).forEach(prop => {
      const newProp = prop.replace(/_[a-z]/g, (str) => str[1].toUpperCase());
      if (newProp !== prop) {
        entity[newProp] = entity[prop];
        delete entity[prop];
      }
    });    
  }
  if (Array.isArray(objs)) {
    objs.forEach((obj) => help(obj));
  }
  else help(objs);
  return objs;
}

// 下划线命名转为帕斯卡命名
function underlineToPascal(str) {
  str = str.replace(/_[a-z]/g, (str) => str[1].toUpperCase());
  return str[0].toUpperCase() + str.slice(1);
}

// 得到预编译位置参数序列 $3, $4 ,$5
function getPosListStr(start, num) {
  return new Array(num).fill(0).map((x, i) => {
    return `$${start + i}`;
  }).join(', ');
}

// 获得当前时间字符串 2023-01-20 00:00:00
function getCurTime() {
  const cur = new Date();
  return `${cur.getFullYear()}-${cur.getMonth() + 1}-${cur.getDate()} ${cur.getHours()}:${cur.getMinutes()}:${cur.getSeconds()}`;
}

module.exports = {
  camelToUnderline,
  underlineToPascal,
  underlineToCamel,
  getPosListStr,
  getCurTime
};