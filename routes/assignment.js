const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { Assignment } = require('../db/baseApi.js');

// 直接使用原生pg库的样例（不一定需要这个接口，仅作参考）
router.get('/getByOrder/:id', async function(req, res) {
  const sql = `select * from "assignment" where order_id = $1`; //用$1 $2来作为参数占位符才能预编译
  const result = await db.query(sql, [req.params.id]); //尽量使用预编译来防止sql注入，把所有参数按顺序作为数组传给query方法即可
  res.send(result.rows);
});

router.post('/intel', async function(req, res) {
  const {examinee_id}=req.body;
  console.log(examinee_id);
  const order_id=(await db.query(`select id from examination_order where examinee_id=$1 and status in (0,1,2,3,6)`,[examinee_id])).rows[0].id;
  const category_id=(await db.query(`select category_id from assignment where order_id=$1 and status=0`,[order_id])).rows;
  var age= Math.floor( ( (new Date().getTime()) - (await db.query(`select birthday from examinee where id=$1`,[examinee_id])).rows[0].birthday.getTime() ) /31536000000);

  //判断制约关系
  var four_two = false, six_ten = false,nine_all=false,breakfast=true;
  if(category_id.length==0||(category_id.length==1 && category_id[0].category_id==10)){//无项目，体检结束
    res.send({end:true});
    await db.query(`update examination_order set status=$1 where id=$2`,[4,order_id]);
  }
  else{
    for(var i=0;i<category_id.length;++i){
      if (category_id[i].category_id==4) { four_two = true; }//心电图-》内科
      if (category_id[i].category_id==6) { six_ten = true;breakfast=false; }//超声-》尿检
      if (category_id[i].category_id==9) { nine_all=true;breakfast=false; }//抽血先做 
    }

    //组合sql，筛选内容：包含所排科室did、检查时长time
    var sql=`select department_id, sum(average_duration) as time from category where id in (`
    for(var i=0;i<category_id.length;++i){
      if (category_id[i].category_id==2&&four_two == true) { continue; }//心电图-》内科
      else if (category_id[i].category_id==10&&six_ten == true) { continue; }//超声-》尿检
      else if(category_id[i].category_id==10){ continue; }
      else{
        sql=sql+category_id[i].category_id+`,`;
      }
    }
    sql=sql.substring(0, sql.length - 1);
    sql=sql+`) group by department_id`;
    const result=(await db.query(sql)).rows;  //{department_id:,time:}


    //排队逻辑(还需扩充)
    var did = -1,time=-1,dtime=-1;//最终选择的科室
    if (nine_all) { 
      did = 14;
      time=(await db.query(`select queue_length from department where id=14`)).rows[0].queue_length;
    }
    else{
      var sql2=`select id,queue_length from department where id in (`;
      for(var i=0;i<result.length;++i){
        sql2=sql2+result[i].department_id+`,`;
      }
      sql2=sql2.substring(0, sql2.length - 1);
      sql2=sql2+`) order by queue_length limit 1`;
      var result2=(await db.query(sql2)).rows[0];
      did=result2.id;
      time=result2.queue_length;
    }
    for(var i=0;i<result.length;++i){
      if(result[i].department_id==did){
        dtime=result[i].time;
        time=time+dtime;
        break;
      }
    }
    

    //判断是否可以吃饭
    if(breakfast){
      let status=(await db.query(`select breakfast from examination_order where examinee_id=$1 and status in (0,1,2,3,6)`,[examinee_id])).rows[0].breakfast;
      if(status==0){
        await db.query(`update examination_order set breakfast=1 where id=$1`,[order_id]);
      }
    }


    //插入排队序列(需判空)
    var q_min=(await db.query(`select serial_number from queue where department_id=$1 order by serial_number asc`,[did])).rows;
    var q_max=(await db.query(`select serial_number from queue where department_id=$1 order by serial_number desc`,[did])).rows;
    if(q_min.length==0){q_min=1;}else{q_min=q_min[0].serial_number;}
    if(q_max.length==0){q_max=1;}else{q_max=q_max[0].serial_number;}
    var q_num=-1;
    if (age >= 75) { q_num = (q_min + 1) % 9999; }
    else { q_num = (q_max + 2) % 9999; }

    var curTime = new Date();
    var addSeconds = new Date(curTime.setSeconds(curTime.getSeconds() + time - dtime));
    var Hours = addSeconds.getHours();
    var Minutes = addSeconds.getMinutes();
    var Seconds = addSeconds.getSeconds();
    var s_createtime = Hours + ':' + Minutes + ':' + Seconds;
    await db.query(`insert into queue (department_id,serial_number,order_id,time,clock_time) values ($1,$2,$3,$4,$5)`,[did,q_num,order_id,dtime,s_createtime]);


    await db.query(`update department set queue_length=$1,number=$2 where id=$3`,[time,q_num,did]);


    //department_id、time、number、breakfast
    res.send({department_id:did,time:time,number:q_num,order_id:order_id,end:false});
  }
});

module.exports = router;