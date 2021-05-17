var express = require ('express');
var router = express.Router();

const sequrityController = require ('../controllers/securityController');
// const { route } = require('./productAdd');

router.get('/login', sequrityController.login);
router.post('/login', sequrityController.authenticate);
router.get('/register', sequrityController.register);
router.post('/register', sequrityController.register);
router.get('/logout', sequrityController.logout);

module.exports = router;