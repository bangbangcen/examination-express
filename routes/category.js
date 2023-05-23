const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { Category } = require('../db/baseApi');

router.get("/list", async (req, res) => {
  const result = await Category.list();
  res.send(result.rows);
});

router.post("/item", async (req, res) => {
    const {name} = req.body;
    const sql= `select
                    b.name
                from 
                    category a,
                    item b
                where
                    a.name=$1 and
                    a.id=b.category_id
                ` ;
    let result = await db.query(sql,[name]);
    res.send(result.rows);
});
module.exports = router;