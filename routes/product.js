var express = require('express');
var router = express.Router();
const productController = require('../controllers/productControllers');
router.get('/product-add', productController.productAdd);
router.get('/:id', productController.producto);

module.exports = router; 
