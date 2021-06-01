var express = require('express');
var router = express.Router();
const productAddController = require('../controllers/productAddController');

router.get('/', productAddController.productAdd);
module.exports = router;