var express = require('express');
var router = express.Router();
const multer = require ('multer');
const path = require ('path');
const productController = require('../controllers/productControllers');
router.get('/:id', productController.product);
router.get('/', productController.form);
router.post('/', productController.create);
var storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, './public/images');
    },
    filename: (req, file, cb)=>{
        cb(null, file.filename + '' + Date.now() + path.extname(file.originalname))
    }
})  
const upload = multer({storage: storage})

module.exports = router; 
