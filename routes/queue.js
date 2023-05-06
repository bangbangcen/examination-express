const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { Queue } = require('../db/baseApi');

router.post("/examinee_info", async function (req, res) {//获得体检人的姓名、检查项目号
    const {department_id}=req.body;
    const sql1=`select order_id as oid from queue where department_id=$1 order by serial_number`;
    const res1=(await db.query(sql1,[department_id])).rows;
    if(res1.length==0){res.send([{name:"无"}]);}
    else{
        const order_id=res1[0].oid;
        const sql2=`select examinee.name as name,examination_order.examinee_id as examinee_id from examinee,examination_order where examination_order.id=$1 and examination_order.examinee_id=examinee.id`;
        const name=(await db.query(sql2,[order_id])).rows[0].name;
        const examinee_id=(await db.query(sql2,[order_id])).rows[0].examinee_id;
        const sql3=`select assignment.category_id from category,assignment where assignment.category_id=category.id and category.department_id=$1 `;
        const category_id=(await db.query(sql3,[department_id])).rows;
        res.send([{name:name,category_id:category_id,order_id:order_id,examinee_id:examinee_id}]);
    }
});

router.post("/delete", async function (req, res) {//从队列中删除一项，扣除时间
    const {order_id,department_id}=req.body;
    var dtime=(await db.query(`select time from queue where order_id=$1`,[order_id])).rows[0].time;
    var time=(await db.query(`select queue_length from department where id=$1`,[department_id])).rows[0].queue_length;
    const sql=`update department set queue_length=$1 where id=$2`;
    await db.query(sql,[time-dtime,department_id]);
    const sql2=`delete from queue where order_id=$1`;// and department_id=$2
    await db.query(sql2,[order_id]);
    res.send();
});

router.post("/alter", async function (req, res) {//改排请求
    const {order_id,department_id}=req.body;
    res.send();
});

router.post("/list", async function (req, res) {//改排请求
    const sql=`select name,queue_length,number from department where id in (9,10,14,16,17,19,24,25) order by id`;
    let result=await db.query(sql);
    res.send(result.rows);
});


module.exports = router;