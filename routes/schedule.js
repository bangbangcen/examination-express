const express = require("express");
const router = express.Router();
const db = require("../db/connector");

router.get("/detail", async (req, res) => {
  const { centerId, year } = req.query;
  const result = await db.query("select * from schedule where center_id = $1 and year = $2 order by month, date", [centerId, year]);
  let schedule = {};
  result.rows.forEach(row => {
    if (!schedule[row.month]) {
      schedule[row.month] = [];
    }
    schedule[row.month].push({ num: row.num });
  });
  res.send(schedule);
});

router.post("/update", async (req, res) => {
  const { schedule, year, centerId } = req.body;
  for (let i = 1; i <= 12; i++) {
    if (schedule[i]) {
      const result = await db.query(
        "select * from schedule where year = $1 and month = $2 and center_id = $3",
        [year, i, centerId]
      );
      if (result.rows.length) {
        await db.query(
          "delete from schedule where year = $1 and month = $2 and center_id = $3",
          [year, i, centerId]
        );
      }
      schedule[i].forEach(async (item, index) => {
        let value = item.num;
        await db.query(
          "insert into schedule (year, month, date, num, center_id) values ($1, $2, $3, $4, $5)",
          [year, i, index + 1, value, centerId]
        );
      });
    }
  }
});

module.exports = router;
