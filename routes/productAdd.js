var express = require('express');
var router = express.Router();
// const multer = require ('multer');
// const path = require ('path');


const productAddController = require('../controllers/productAddController');

// var storage = multer.diskStorage({
//     destination: (req, file, cb) => {
//         cb(null, './public/images');
//     },
//     filename: (req, file, cb)=>{
//         cb(null, file.filename + '' + Date.now() + path.extname(file.originalname))
//     }
// })  
// const upload = multer({storage: storage})

router.get('/', productAddController.form);
router.post('/', /*upload.single("image" Se tiene que llamar igual que el imput del form)*/ productAddController.create);
module.exports = router;