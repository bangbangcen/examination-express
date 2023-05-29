const jwt = require("jsonwebtoken");
const db = require("../db/connector");
const express = require("express");
const axios = require("axios");
const router = express.Router();
const { underlineToCamel } = require("../util");
const SECRET_KEY = "ajskdlfksj2jrk";

router.get("/", function (req, res, next) {
  res.render("index", { title: "Express" });
});

router.post("/login", async (req, res) => {
  const { username, password } = req.body;
  let result = await db.query(
    `select id, role_id from admin where name = $1 and password = $2`,
    [username, password]
  );
  if (result.rowCount === 0) {
    res.send({ login: false, message: "用户名或密码错误！" });
  } else {
    const { id, roleId } = underlineToCamel(result.rows[0]);
    const time = Date.now();
    const token = jwt.sign({ id, roleId, time }, SECRET_KEY);
    const sql = `select permission.path 
          from role_permission,permission,admin 
          where admin.id=$1 and 
          admin.role_id=role_permission.role_id and
          role_permission.permission_id=permission.id`;
    const path = (await db.query(sql, [result.rows[0].id])).rows[0].path;
    res.send({
      login: true,
      message: "登陆成功！",
      token,
      roleId,
      id,
      path: path,
    });
  }
});

router.post("/getSms", async (req, res) => {
  const { phone } = req.body;
  let code = "";
  for (let i = 0; i < 6; i++) {
    code += parseInt(Math.random() * 10);
  }
  let a = axios.create({
    headers: {
      Authorization: "APPCODE 9633357b72b04b27b62c549584a63350",
      "Content-Type": "application/x-www-form-urlencoded; charset=utf-8",
    },
  });
  a.post("http://dfsns.market.alicloudapi.com/data/send_sms", {
    content: `code:${code}`,
    phone_number: phone,
    template_id: "CST_ptdie100",
  });
  const result = await db.query("select * from public.user where phone = $1", [phone]);
  if (result.rows.length === 0) {
    await db.query(
      `insert into public.user (name, identification_number, sex, birthday, phone, create_time) values ('', '', '', NULL, $1, CURRENT_TIMESTAMP)`,
      [phone]
    );
  }
  await db.query(`update public.user set sms = $1 where phone = $2`, [code, phone]);
  res.send();
});

router.post("/userLogin", async (req, res) => {
  const { phone, sms } = req.body;
  const result = await db.query(`select * from public.user where phone = $1 and sms = $2`, [phone, sms]);
  if (result.rows.length === 1) {
    const id = result.rows[0].id;
    const token = jwt.sign({ id, time: Date.now() }, SECRET_KEY);
    res.send({ message: "登陆成功", success: true, token });
  }
  else {
    res.send({ message: "验证码错误", success: false });
  }
});
module.exports = router;
