const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { User } = require('../db/baseApi');
const { underlineToCamel } = require("../util");

router.post('/addUser', async function(req, res) {
  await User.insertOne(req.body);
  res.send();
});

router.post('/addUsers', async function(req, res) {
  await User.insertMany(req.body);
  res.send();
});

router.delete('/delete/:id', async function(req, res) {
  await User.deleteOne(req.params.id);
  res.send();
});

router.post('/batchDelete', async function(req, res) {
  await User.deleteMany(req.body);
  res.send();
});

router.put('/update/:id', async function(req, res) {
  await User.updateOne(req.body, req.params.id);
  res.send();
});

router.post('/page', async function(req, res) {
  const { page, size } = req.body;
  const sql = `select * from public.user limit $1, $2`;
  const sqlTotal = `select count(*) from public.user`;
  const result = await db.query(sql, [(page - 1) * size, size]);
  const totalRes = await db.query(sqlTotal);
  res.send({
    rows: underlineToCamel(result.rows),
    total: totalRes.rows[0].count.charCodeAt() - '0'.charCodeAt(),
  });
});

router.post('/search', async function(req, res) {
  const { keyword, page, size } = req.body;
  const k = keyword;
  const sql = `select * from public.user where name like '%${k}%' or identification_number like '%${k}%' or sex like '%${k}%' or phone like '%${k}%' limit ${(page - 1) * size, size}`;
  const sqlTotal = `select count(*) from public.user where name like '%${k}%' or identification_number like '%${k}%' or sex like '%${k}%' or phone like '%${k}%'`;
  const result = await db.query(sql);
  const totalRes = await db.query(sqlTotal);
  res.send({
    rows: underlineToCamel(result.rows),
    total: totalRes.rows[0].count.charCodeAt() - '0'.charCodeAt()
  });
});
module.exports = router;
