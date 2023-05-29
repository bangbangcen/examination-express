const express = require("express");
const router = express.Router();
const db = require("../db/connector");
const { underlineToCamel } = require("../util");
const { Examinee } = require('../db/baseApi');

//新增或更改体检人信息
router.post("/update", async function (req, res) {
  const { id, examinee } = req.body;
  console.log(examinee);
  const {
    name,
    identificationNumber,
    sex,
    birthday,
    phone,
    relation,
    status,
  } = examinee;
  if (status === "add") {
    await db.query(
      "insert into examinee (name, identification_number, sex, birthday, phone, create_time, user_id, relation) values ($1, $2, $3, $4, $5, CURRENT_TIMESTAMP, $6, $7)",
      [name, identificationNumber, sex, birthday, phone, id, relation]
    );
  }
  else {
    Examinee.updateOne(examinee, examinee.id);
    // await db.query(
    //   "update examinee (name, identification_number, sex, birthday, phone, create_time, user_id, relation) values ($1, $2, $3, $4, $5, CURRENT_TIMESTAMP, $6, $7)",
    //   [name, identificationNumber, sex, birthday, phone, id, relationship]
    // )
  }
  res.send();
});

router.get("/list", async function (req, res) {
  const { id } = req.body;
  const result = await db.query("select * from examinee where user_id = $1", [id]);
  res.send(underlineToCamel(result.rows));
});

router.delete("/delete", async function (req, res) {
  const { id } = req.query;
  await db.query("delete from examinee where id = $1", [id]);
  res.send();
});
module.exports = router;
