var express = require('express');
var router = express.router;
let productsController = require('../controllers/productsControllers');

router.get('/', productsController.index);

module.exports = router;
