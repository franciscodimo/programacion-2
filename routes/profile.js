var express = require('express');
const productController = require('../controllers/productControllers');
var router = express.Router();
let profileController = require('../controllers/profileController');
router.get('/edit',profileController.profileEdit);
router.post('/edit', profileController.profileEdit)
router.get('/:id',profileController.profile);
module.exports = router;