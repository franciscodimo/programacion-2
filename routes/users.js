var express = require('express');
var router = express.Router();
let userController = require('../controllers/userController');
router.get('/:id',userController.index);



module.exports = router;
