const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { ExaminationCenter } = require('../db/baseApi');

router.post("/list", async (req, res) => {
  const {curPage} = req.body;
  const sql = `select 
              a.name as n, district_id, address,nearby,telephone,announcement,latitude,longitude,morning_limit,afternoon_limit,b.name
              from examination_center a
              join district b 
              on a.district_id=b.id
              limit $1 , $2`;
  let result = await db.query(sql,[(curPage-1)*5,5]);
  res.send(result.rows);
});

router.post("/del", async (req, res) => {
  const {name} = req.body;
  const sql = `delete from examination_center where name = $1`;
  return db.query(sql, [name]);
});

router.post("/count", async (req, res) => {
  const sql = `select count(*) from examination_center`;
  let result = await db.query(sql);
  res.send(result.rows[0].count);
});
  module.exports = router;
