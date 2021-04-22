var express = require('express');
var router = express.Router();
let indexController = require('../controllers/indexController');
const products = require('../modules/product');

/* GET home page. */
router.get('/', indexController.index);

module.exports = router;
