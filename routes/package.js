const express = require('express');
const router = express.Router();
const db = require('../db/connector');

router.get('/allItems', async function(req, res) {
  // 给个样例，这种数据结构直接返回给前端肯定不行，还要处理
  const sql = `select * from package, package_category, category, item where package.id = package_category.package_id and package_category.category_id = category.id and category.id = item.category_id`;
  const result = await db.query(sql);
  res.send(result.rows);
});

module.exports = router;