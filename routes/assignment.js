const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { Assignment } = require('../db/baseApi.js');

// 直接使用原生pg库的样例（不一定需要这个接口，仅作参考）
router.get('/getByOrder/:id', async function(req, res) {
  const sql = `select * from "assignment" where order_id = $1`; //用$1 $2来作为参数占位符才能预编译
  const result = await db.query(sql, [req.params.id]); //尽量使用预编译来防止sql注入，把所有参数按顺序作为数组传给query方法即可
  res.send(result.rows);
});

module.exports = router;