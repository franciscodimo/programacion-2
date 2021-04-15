var express = require('express');
var router = express.Router();
let indexController = require('../controllers/indexController')

/* GET home page. */
router.get('/', indexController.index);
// router.get('/', function(req, res, next) {
//   res.render('index', { logueado: true });
// });


module.exports = router;
