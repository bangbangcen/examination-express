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
                    a.examinee_id as examinee_id,
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

//改变体检订单吃饭情况
router.post('/changeBreakfast', async (req, res) => {
    const{examinee_id,breakfast}=req.body;
    const sql=`select id from examination_order where examinee_id=$1 and status in (0,1,2,3,6)`;
    const id=(await db.query(sql,[examinee_id])).rows[0].id;
    const sql2=`update examination_order set breakfast=$1,status=3 where id=$2`;
    await db.query(sql2,[breakfast,examinee_id]);
    res.send();
});

router.post('/changeStatus2', async (req, res) => {
    const{examinee_id,status}=req.body;
    const sql=`select id from examination_order where examinee_id=$1 and status in (0,1,2,3,6)`;
    const id=(await db.query(sql,[examinee_id])).rows[0].id;
    const sql2=`update examination_order set status=$1 where id=$2`;
    await db.query(sql2,[status,examinee_id]);
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
    for(;i<que.length-1;++i){
        sql2=sql2+`(` + que[i].category_id + `,` + order_id +`,0,false),`;
    }
    sql2=sql2+`(` + que[i].category_id+`,`+ order_id+ `,0,false)`;
    await db.query(sql2);
    res.send();
});

router.post("/examinee_info", async (req, res) => {//获取体检人所有信息
    const {user_id} = req.body;
    const sql=`select * from examinee where user_id=$1`;
    let result = await db.query(sql,[user_id]);
    res.send(result.rows);
});

router.post("/examinee_status", async (req, res) => {//获取当前订单状态、是否在体检时间内、排哪个科室、估计排多久
    const {examinee_id} = req.body;
    const sql=`select * from examination_order where examinee_id=$1 and status in (0,1,2,3,6)`;
    const tmp=(await db.query(sql,[examinee_id])).rows;
    if(tmp.length>0){
        const result=(await db.query(sql,[examinee_id])).rows[0];
        let status = result.status;//获取当前订单状态
        let time = ((new Date().getTime())-result.examine_date.getTime())/86400000;
        let date = false;//获取是否在体检时间内
        if(time<=1 && time>=0.25){date = true;}
        if(status==1){
            const sql2=`select * from queue where order_id=$1`;
            const result2=(await db.query(sql2,[result.id])).rows[0];
            let department_id=result2.department_id;//排哪个科室
            let department_name=(await db.query(`select name from department where id=$1`,[department_id])).rows[0].name;
            let serial_number=result2.serial_number;//排队序号
            let dtime=result2.clock_time;//估计排多久
            let breakfast=result.breakfast;//吃饭状态
            res.send({order_id:result.id,breakfast:breakfast,status:status,date:date,department_name:department_name,department_id:department_id,serial_number:serial_number,time:dtime});
        }
        else{
            res.send({status:status,date:date,order_id:result.id});
        }
    }
    else{
        res.send({status:4});
    }
});


module.exports = router;