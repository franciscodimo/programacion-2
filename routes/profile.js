var express = require('express');
var router = express.Router();
let profileController = require('../controllers/profileController');
router.get('/',profileController.profileEdit);
router.get('/',profileController.profile);
module.exports = router;