const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { Package } = require('../db/baseApi');

router.get('/list', async function(req, res) {
    const { isHot, tag } = req.query;
    let sql = "select * from package";
    if (isHot) {
        sql += " where is_hot = true";
    }
    if (tag) {
        sql += ` where tag = '${tag}'`;
    }
    const result = await db.query(sql);
    res.send(result.rows);
});

//按套餐名查所有种类
router.post("/categories", async (req, res) => {
    const {name} = req.body;
    const sql= `select 
                    c.name as name
                from 
                    package a,
                    package_category b,
                    category c
                where
                    a.name=$1 and
                    a.id=b.package_id and
                    c.id=b.category_id
                ;`
    let result = await db.query(sql,[name]);
    var arr = [];
    for(var i=0 ;i<(result.rows).length;++i){
        arr.push((result.rows)[i].name);
    }
    res.send(arr);
});

router.get("/categories", async (req, res) => {
    const { id } = req.query;
    const sql = `select 
                    c.name as name
                from 
                    package a,
                    package_category b,
                    category c
                where
                    a.id=$1 and
                    a.id=b.package_id and
                    c.id=b.category_id
                ;`;
    let result = await db.query(sql,[id]);
    res.send(result.rows);
});
module.exports = router;