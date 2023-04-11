const express = require("express");
const router = express.Router();
const db = require("../db/connector");
const { underlineToCamel } = require("../util");
const { Admin } = require("../db/baseApi");

router.post("/newAdmin", async function (req, res) {
  const { name, phone, newRoleId, password } = req.body;
  await Admin.insertOne({ name, phone, roleId: newRoleId, password });
  res.send();
});

router.post("/page", async function (req, res) {
  const { page, size } = req.body;
  const sql = `select *, admin.name as name, role.name as role_name from admin, role where admin.role_id = role.id limit $1, $2`;
  const sqlTotal = `select count(*) from admin`;
  console.log((page - 1) * size, page * size);
  const result = await db.query(sql, [(page - 1) * size, size]);
  console.log(result);
  const totalRes = await db.query(sqlTotal);
  res.send({
    rows: underlineToCamel(result.rows),
    total: parseInt(totalRes.rows[0].count),
  });
});


module.exports = router;
