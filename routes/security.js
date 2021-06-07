var express = require ('express');
var router = express.Router();
const multer = require ('multer');
const path = require ('path');
const sequrityController = require ('../controllers/securityController');
// const { route } = require('./productAdd');
var storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, './public/images');
    },
    filename: (req, file, cb)=>{
        cb(null, Date.now() + '-' + file.filename + path.extname(file.originalname))
    }
})  
const upload = multer({storage: storage})
router.get('/login', sequrityController.login);
router.post('/login', sequrityController.authenticate);
router.get('/register', sequrityController.register);
router.post('/register', upload.single('url_imagen'), sequrityController.register);
router.all('/logout', sequrityController.logout);

module.exports = router;