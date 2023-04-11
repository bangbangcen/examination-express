const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { ExaminatinOrder } = require('../db/baseApi');

router.post("/list", async (req, res) => {
    const {dname} = req.body;
    const sql= `select 
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
module.exports = router;