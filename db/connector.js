const pg = require('pg');
const configs = require('./config');
const database = new pg.Pool(configs);

module.exports = database;