const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { ExaminationResult } = require('../db/baseApi');

//assignment添加医生id、examination_result添加若干记录
router.post("/add", async function (req, res) {
    const{category_id,data,order_id,start_id,doctor_id}=req.body;
    
    //查找订单号
    const sql1=`select id from assignment where order_id=$1 and category_id=$2`;
    const assignment_id=(await db.query(sql1,[order_id,category_id])).rows[0].id;

    //订单状态、医生id更新
    const sql2=`update assignment set doctor_id=$1,status=1 where id=$2`;
    await db.query(sql2,[doctor_id,assignment_id]);

    //检查结果表插入数据
    var sql3=`insert into examination_result (result_value,text_option_id,assignment_id,item_id) values `;
    var i=0;
    for(;i<data.length;++i){
        if(data[i].value_type==0){
            sql3=sql3+`(` + data[i].value + `,NULL,` + assignment_id +`,`+(start_id+data[i].item_id)+`),`;
        }
        else{
            const sql4=`select id from result_text_option where text=$1`;
            var text_option_id=-1;
            const result=(await db.query(sql4,[data[i].text])).rows;
            if(result.length>0){text_option_id=result[0].id;}
            else{
                const sql5=`insert into result_text_option (text) values ($1)`;
                await db.query(sql5,[data[i].text]);
                text_option_id=(await db.query(sql4,[data[i].text])).rows[0].id;
            }
            sql3=sql3+`(` + `NULL,` + text_option_id +`,`+ assignment_id +`,`+data[i].item_id+`),`;
        }
    }
    sql3=sql3.substring(0, sql3.length - 1);
    await db.query(sql3);
    res.send();
});

module.exports = router;