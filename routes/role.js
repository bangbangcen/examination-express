const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { Role } = require('../db/baseApi');

router.get("/list", async (req, res) => {
  const result = await Role.list();
  res.send(result.rows);
});

router.post("/delete", async (req, res) => {
  const { deletedRoleId } = req.body;
  console.log(deletedRoleId);
  // await db.query("delete from role, role_permission where role.id = role_permission.role_id and role.id = $1", [roleId]);
  await db.query("delete from role where id = $1", [deletedRoleId]);
  res.send();
});

module.exports = router;