const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { PackageCategory } = require('../db/baseApi');

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
                    *
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
    res.send(result.rows);
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

router.get("/categoryList", async (req, res) => {
    const result = await db.query("select * from category");
    res.send(result.rows);
})
router.post("/changeCategories", async (req, res) => {
    const { packageId, items } = req.body;
    await db.query("delete from package_category where package_id = $1", [packageId]);
    if (items.length) {
        await PackageCategory.insertMany(items);
    }
    res.send();
});
module.exports = router;