const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { Item } = require('../db/baseApi');

router.post("/list", async function (req, res) {//按category_id筛选
    const {category_id}=req.body;
    const sql=`select * from item where category_id=$1 order by id`;
    const result=(await db.query(sql,[category_id])).rows;
    res.send(result);
});

module.exports = router;