const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { Permission } = require('../db/baseApi');

router.get('/list', async function(req, res) {
  const result = await Permission.list();
  const rows = result.rows;
  rows.forEach(cur => {
    let parent = rows.find(row => row.id === cur.parentId);
    if (parent) {
      if (!parent.children) {
        parent.children = [cur];
      }
      else {  
        parent.children.push(cur);
      }
    }
  });
  res.send(rows.find(row => row.level === 0));
});

// router.post('/update', async function(req, res) {
//   console.log(req.body);
//   res.send("1");
// });

module.exports = router;