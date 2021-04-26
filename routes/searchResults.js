var express = require('express');
var router = express.Router();
let searchController = require('../controllers/searchController');
const product = require('../modules/product');
router.get('/', searchController.search);
module.exports = router;