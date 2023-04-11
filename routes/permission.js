const express = require("express");
const router = express.Router();
const db = require("../db/connector");
const { Permission } = require("../db/baseApi");

router.get("/list", async function (req, res) {
  let sql = `select p.* from admin a, role r, permission p, role_permission rp where a.role_id = r.id and r.id = rp.role_id and rp.permission_id = p.id and a.id = $1 order by p.index, p.level`;
  const result = await db.query(sql, [req.body.id]);
  const rows = result.rows;
  rows.forEach((cur) => {
    let parent = rows.find((row) => row.id === cur.parent_id);
    if (parent) {
      if (!parent.children) {
        parent.children = [cur];
      } else {
        parent.children.push(cur);
      }
    }
  });
  res.send(rows.find((row) => row.level === 0));
});

router.post("/update", async function (req, res) {
  Permission.updateMany(req.body);
  res.send({ message: "修改成功" });
});

router.get("/listByRole/:roleId", async function (req, res) {
  console.log(req.params.roleId)
  const result = await db.query("select * from permission, role_permission where permission.id = role_permission.permission_id and role_permission.role_id = $1", [req.params.roleId]);
  res.send(result.rows);
});
module.exports = router;
