var express = require('express');
var router = express.Router();
let indexController = require('../controllers/indexController');

/* GET home page. */
router.get('/', indexController.index);
router.get('/mapa', indexController.mapa);

module.exports = router;

