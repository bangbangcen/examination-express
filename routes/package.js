const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { Package } = require('../db/baseApi');

router.get('/list', async function(req, res) {
    const result = await Package.list();
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

module.exports = router;