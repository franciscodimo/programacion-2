var express = require('express');
var router = express.Router();
let profileController = require('../controllers/profileController');
router.get('/edit',profileController.profileEdit);
router.get('/:id',profileController.profile);
module.exports = router;