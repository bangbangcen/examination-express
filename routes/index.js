const jwt = require('jsonwebtoken');
const db = require('../db/connector');
const express = require('express');
const router = express.Router();
const { underlineToCamel } = require('../util');
const SECRET_KEY = "ajskdlfksj2jrk";

router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.post('/login', async (req, res) => {
  const { username, password } = req.body;
  let result = await db.query(`select id, role_id from admin where name = $1 and password = $2`, [username, password]);
  if (result.rowCount === 0) {
    res.send({ login: false, message: '用户名或密码错误！' });
  }
  else {
    const { id, roleId } = underlineToCamel(result.rows[0]);
    const time = Date.now();
    const token = jwt.sign({ id, roleId, time }, SECRET_KEY);
    const sql=`select permission.path 
          from role_permission,permission,admin 
          where admin.id=$1 and 
          admin.role_id=role_permission.role_id and
          role_permission.permission_id=permission.id`;
    const path=(await db.query(sql, [result.rows[0].id])).rows[0].path;
    res.send({ login: true, message: '登陆成功！', token, roleId ,id,path:path});
  }
});

module.exports = router;
