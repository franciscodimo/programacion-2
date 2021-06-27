var express = require('express');
var router = express.Router();
let profileController = require('../controllers/profileController');
var router = express.Router();
router.get('/edit',profileController.profileEdit);
router.post('/edit', profileController.profileEdit)
router.get('/:id',profileController.profile);
router.all('/:id/remove',profileController.remove);

module.exports = router;