var express = require('express');
var router = express.Router();
const productController = require('../controllers/productControllers');
router.get('/:id', productController.product);
router.get('/', productController.form);
router.post('/', productController.create);

module.exports = router; 
