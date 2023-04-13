const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { ExaminatinOrder } = require('../db/baseApi');
const { Assignment } = require('../db/baseApi');

router.post("/list", async (req, res) => {
    const {dname} = req.body;
    const sql= `select 
                    a.id as id,
                    b.name as name,
                    b.phone as phone,
                    c.name as package_name,
                    d.name as center_name,
                    a.examine_date as examine_date,
                    a.status as status,
                    a.type as type,
                    e.company_name as company_name
                from 
                    examination_order a,
                    examinee b,
                    package c,
                    examination_center d,
                    group_information e
                where
                    a.examinee_id=b.id and
                    a.package_id=c.id and
                    a.center_id=d.id and
                    nvl(a.group_information_id,'0')=e.id and
                    CONCAT(b.name, b.phone) LIKE $1` 
                    ;
    let result = await db.query(sql,["%"+dname+"%"]);
    res.send(result.rows);
});

router.post('/assignment', async (req, res) => {
    const {order_id} = req.body;
    const sql=`select distinct
                    b.id
               from
                    assignment a,
                    category b
                where
                    a.order_id=$1 and
                    b.id=a.category_id        
    `;
    let result = await db.query(sql,[order_id]);
    res.send(result.rows);
});

router.post('/addCategory', async (req, res) => {
    const{order_id,name}=req.body;
    const sql=`select id from category where name=$1`;
    let category_id = (await db.query(sql,[name])).rows[0].id;
    await Assignment.insertOne({ id:4,category_id:category_id, order_id:order_id,status:0,is_extra:true });
    res.send();
});

module.exports = router;