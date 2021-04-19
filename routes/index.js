var express = require('express');
var router = express.Router();
let indexController = require('../controllers/indexController');
const products = require('../modules/product');

/* GET home page. */
router.get('/', indexController.index);
router.get('/search-result', function(req, res, next) {
    let search = req.query.search;
    let result = [];
    if(products.includes(search)) {
        result.push(products);

    }

    
    res.render('search-results', { search:search , result:result });
});


module.exports = router;
