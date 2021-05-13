module.exports = router;
var express = require ('express');
var router = express.Router();


/*GET home page*/

router.get('/', productController.product)

module.exports = router