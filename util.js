// 对象的所有属性由驼峰命名转为下划线命名
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

// 下划线命名转为帕斯卡命名
function underlineToPascal(str) {
  str = str.replace(/_[a-z]/g, (str) => str[1].toUpperCase());
  return str[0].toUpperCase() + str.slice(1);
}

module.exports = {
  camelToUnderline,
  underlineToPascal
};