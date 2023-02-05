const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { DepartmentDoctor } = require('../db/baseApi');

router.post("/list", async (req, res) => {
  const {dname} = req.body;
  const sql = `select b.name as doctor_name, c.name as department_name, d.is_busy
            from department_doctor a,admin b,department c,doctor_status d
            where a.department_id=c.id and a.administer_id=b.id and d.doctor_id=b.id and c.name=$1
            order by doctor_name`;
  let result = await db.query(sql,[dname]);
  res.send(result.rows);
});

module.exports = router;