var express = require('express');
var router = express.Router();
let searchController = require('../controllers/searchController');
const products = require('../modules/product');

router.get('/', searchController.search);
module.exports = router;