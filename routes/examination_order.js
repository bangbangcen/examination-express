const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { ExaminatinOrder } = require('../db/baseApi');
const { Assignment } = require('../db/baseApi');

//按名或电话搜索用户订单信息
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

//按订单号查询子项目
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

//按订单号添加子项目名
router.post('/addAssignment', async (req, res) => {
    const{order_id,name}=req.body;
    const sql=`select id from category where name=$1`;
    let category_id = (await db.query(sql,[name])).rows[0].id;
    await Assignment.insertOne({ id:4,category_id:category_id, order_id:order_id,status:0,is_extra:true });
    res.send();
});

//改变体检订单状态
router.post('/changeStatus', async (req, res) => {
    const{order_id,order_status}=req.body;
    const sql=`update examination_order set status=$1 where id=$2`;
    await db.query(sql,[order_status,order_id]);
    res.send();
});

//按订单号添加套餐内子检查项目
router.post('/newAssignment', async (req, res) => {
    const{order_id}=req.body;
    const sql=`select distinct
                    b.category_id 
               from 
                    examination_order a,
                    package_category b
               where 
                    a.id=$1 and
                    a.package_id=b.package_id`;
    let que = (await db.query(sql,[order_id])).rows;
    var sql2=`insert into assignment (category_id,order_id,status,is_extra) values `;
    var i=0;
    console.log(que.length);
    for(;i<que.length-1;++i){
        sql2=sql2+`(` + que[i].category_id + `,` + order_id +`,0,false),`;
    }
    sql2=sql2+`(` + que[i].category_id+`,`+ order_id+ `,0,false)`;
    await db.query(sql2);
    res.send();
});

module.exports = router;