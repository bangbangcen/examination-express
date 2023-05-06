const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { Role, RolePermission } = require('../db/baseApi');

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

router.post("/create", async (req, res) => {
  const { name, description, selectedIds } = req.body;
  await Role.insertOne({ name, description });
  const maxRes = await db.query("select Max(id) from role");
  const maxId = maxRes.rows[0].max;
  console.log(maxId);
  await RolePermission.insertMany(req.body.selectedIds.map(pmsId => {
    return {
      permissionId: pmsId,
      roleId: maxId
    };
  }));
  res.send();
});

router.put("/update", async (req, res) => {
  const { name, description, roleId } = req.body;
  //console.log(req.body);
  const sql = `update role set name = '${name}', description = '${description}' where id = ${roleId}`;
  const result = await db.query(sql);
  res.send();
});
module.exports = router;