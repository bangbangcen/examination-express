const express = require('express');
const router = express.Router();
const { Relationship } = require('../db/baseApi');

router.get('/list', async function(req, res) {
  let result = await Relationship.list();
  res.send(result.rows);
});

module.exports = router;
