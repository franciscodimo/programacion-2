var express = require('express');
var router = express.Router();
const productController = require('../controllers/productControllers');
router.get('/:id', productController.product);

module.exports = router; 
