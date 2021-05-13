var express = require('express');
var router = express.Router();
let searchController = require('../controllers/searchController');
router.get('/search?', searchController.search);
module.exports = router;