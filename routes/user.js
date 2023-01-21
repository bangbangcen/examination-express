const express = require('express');
const router = express.Router();
const db = require('../db/connector');
const { User } = require('../db/baseApi');

router.post('/addUser', async function(req, res) {
  await User.insertOne(req.body);
  res.send();
});

router.post('/addUsers', async function(req, res) {
  await User.insertMany(req.body);
  res.send();
});

router.delete('/delete/:id', async function(req, res) {
  await User.deleteOne(req.params.id);
  res.send();
});

router.post('/batchDelete', async function(req, res) {
  await User.deleteMany(req.body);
  res.send();
});

router.put('/update/:id', async function(req, res) {
  await User.updateOne(req.body, req.params.id);
  res.send();
});

router.post('/page', async function(req, res) {
  const result = await User.page(req.body);
  res.send(result.rows);
});

module.exports = router;
