var express = require('express');
var router = express.Router();
const multer = require ('multer');
const path = require ('path');
const productController = require('../controllers/productControllers');

var storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, './public/images');
    },
    filename: (req, file, cb)=>{
        cb(null, Date.now() + '-' + file.filename + path.extname(file.originalname))
    }
})  
const upload = multer({storage: storage})
router.get('/:id', productController.product);
router.get('/', productController.form);
router.post('/', upload.single('image'), productController.create);

module.exports = router; 
