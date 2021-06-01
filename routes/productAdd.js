var express = require('express');
var router = express.Router();
const productAddController = require('../controllers/productAddController');
router.get('/', productAddController.form);
router.post('/', productAddController.create);
module.exports = router;