const express = require("express");
const router = express.Router();
const db = require("../db/connector");
const { underlineToCamel } = require("../util");

router.post("/newAdmin", async function (req, res) {
  const { name, phone, newRoleId, password } = req.body;
  await Admin.insertOne({ name, phone, roleId: newRoleId, password });
  res.send();
});

router.post("/page", async function (req, res) {
  const { page, size } = req.body;
  const result = await db.query(
    "select *, p.name as package_name, g.id as id from group_information as g, package as p where g.package_id = p.id limit $1, $2",
    [(page - 1) * size, size]
  );
  const sum = (await db.query("select count(*) from group_information")).rows[0]
    .count;
  res.send({ rows: underlineToCamel(result.rows), sum: parseInt(sum) });
});

router.post("/examineeList", async function (req, res) {
  const { page, size, groupId } = req.body;
  const result = await db.query(
    "select * from examination_order where group_information_id = $1 limit $2, $3",
    [groupId, (page - 1) * size, size]
  );
  const sum = (
    await db.query(
      "select count(*) from examination_order where group_information_id = $1",
      [groupId]
    )
  ).rows[0].count;
  res.send({ rows: underlineToCamel(result.rows), sum });
});

router.get("/info", async function (req, res) {
  const { phone } = req.query;
  const result = await db.query(
    "select *, p.name as package_name from examination_order as e, group_information as g, package as p where e.group_information_id = g.id and e.package_id = p.id and e.phone = $1",
    [phone]
  );
  const categoryNum = (
    await db.query(
      "select count(*) from category, package, examination_order where category.package_id = package.id and package.id = examination_order.package_id and examination_order.phone = $1",
      [phone]
    )
  ).rows[0].count;
  res.send({ categoryNum, ...underlineToCamel(result.rows[0]) });
});
module.exports = router;
