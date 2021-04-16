var express = require('express');
var router = express.Router();

let userController = require('../controllers/userController')

router.get('/', function(req, res, next) {
    res.render('profile', { title: 'Express' });
  });

module.exports = router;
