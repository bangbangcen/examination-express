const express = require("express");
const router = express.Router();
const db = require("../db/connector");
const { ExaminationCenter, ExaminationOrder, GroupInformation } = require("../db/baseApi");
const { underlineToCamel } = require("../util");
const xlsx = require('node-xlsx');
const multer = require('multer');
const fs = require('fs');

router.post("/list", async (req, res) => {
  const { curPage } = req.body;
  const sql = `select a.id as id,
              a.name as n, district_id, address,nearby,telephone,announcement,latitude,longitude,morning_limit,afternoon_limit,b.name
              from examination_center a
              join district b 
              on a.district_id=b.id
              limit $1 , $2`;
  let result = await db.query(sql, [(curPage - 1) * 5, 5]);
  res.send(result.rows);
});

router.post("/del", async (req, res) => {
  const { name } = req.body;
  const sql = `delete from examination_center where name = $1`;
  return db.query(sql, [name]);
});

router.post("/count", async (req, res) => {
  const sql = `select count(*) from examination_center`;
  let result = await db.query(sql);
  res.send(result.rows[0].count);
});

router.get("/list", async (req, res) => {
  const { search = "" } = req.query;

  console.log(search);
  let curPage = 1;
  const sql = `select a.id as id,
              a.name as name, district_id, address,nearby,telephone,announcement,latitude,longitude,morning_limit,afternoon_limit,b.name as district
              from examination_center a
              join district b 
              on a.district_id=b.id
              where a.name like '%${search}%'
              limit $1, $2`;
  let result = await db.query(sql, [(curPage - 1) * 5, 5]);
  res.send(underlineToCamel(result.rows));
});

router.get("/detail", async (req, res) => {
  const { id } = req.query;
  const sql = `select a.id as id,
              a.name as name, district_id, address,nearby,telephone,announcement,latitude,longitude,morning_limit,afternoon_limit,b.name as district
              from examination_center a
              join district b 
              on a.district_id=b.id
              where a.id = $1`;
  let result = await db.query(sql, [id]);
  res.send(underlineToCamel(result.rows[0]));
});

router.post("/listByDistance", async (req, res) => {
  const { location, keyword = "" } = req.body;
  const { latitude, longitude } = location;
  const sql = `SELECT *, examination_center.name as name, district.name as district,
   ROUND(
		6378.138 * 2 * ASIN(
			SQRT(
				POW(
					SIN((
							$1 * PI()/ 180-latitude * PI()/ 180 
							)/ 2 
					),
					2 
					)+ COS( $2 * PI()/ 180 )* COS( latitude * PI()/ 180 )* POW(
					SIN((
							$3 * PI()/ 180-longitude * PI()/ 180 
							)/ 2 
					),
					2 
				)))* 1000 
	) AS distance from examination_center, district where examination_center.name like '%${keyword}%' and district.id = examination_center.district_id order by distance`;
  const result = await db.query(sql, [latitude, latitude, longitude]);
  res.send(result.rows);
});

router.get("/singleCenter", async(req, res) => {
  const { id } = req.body;
  const sql = `select * from examination_center where operator_id = $1`;
  const result = await db.query(sql, [id]);
  res.send(underlineToCamel(result.rows));
});

router.post("/addCenter", async(req, res) => {
  const { id } = req.body;
  req.body.operator_id = id;
  await ExaminationCenter.insertOne(req.body);
  res.send();
});

router.post("/updateCenter", async(req, res) => {
  const { centerId } = req.body;
  await ExaminationCenter.updateOne(req.body, centerId);
  res.send();
});

const upload_middleware = multer({dest: './public'});
router.post("/groupImport", upload_middleware.single("file"), async(req, res) => {
  const data = xlsx.parse(req.file.path)[0].data;
  console.log(data)
  const list = data.slice(6);
  fs.unlink(req.file.path, () => {});
  const packageName = data[1][1];
  const packageId = (await db.query("select id from package where name = $1", [packageName])).rows[0].id;
  const result = await GroupInformation.insertOne({
    companyName: data[0][1],
    createTime: new Date(),
    startTime: data[2][1],
    endTime: data[3][1],
    number: list.length,
    packageId
  });
  const groupOrderId = result.rows[0].id;
  await ExaminationOrder.insertMany(list.map(p => {
    return {
      id: groupOrderId,
      packageId: packageId,
      status: 0,
      type: 0,
      groupInformationId: groupOrderId,
      phone: p[1],
      name: p[0]
    }
  }));
  res.send();
});
module.exports = router;
