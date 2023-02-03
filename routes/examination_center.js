const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { ExaminationCenter } = require('../db/baseApi');

router.get("/list", async (req, res) => {
    const result = await ExaminationCenter.list();
    var i=0;
    for(var x in result.rows){
      var d_id=result.rows[i].districtId;
      const sql = `select name from district where id=$1`;
      let result2 = await db.query(sql,[d_id]);
      result.rows[i].districtId=result2.rows[0].name;
      i++;
    }
    res.send(result.rows);
});
router.post("/del", async (req, res) => {
  const {name} = req.body;
  const sql = `delete from examination_center where name = $1`;
  return db.query(sql, [name]);
});
  module.exports = router;
