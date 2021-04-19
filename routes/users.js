var express = require('express');
var router = express.Router();
let userController = require('../controllers/userController');

router.get('/',userController.profile) 

  router.get('/register', function(req, res, next) {
    res.render('register', { title: 'Express' });
  });
module.exports = router;
