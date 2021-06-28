var express = require('express');
var router = express.Router();
const multer = require ('multer');
let profileController = require('../controllers/profileController');
var router = express.Router();

var storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, './public/users'); 
    },
    filename: (req, file, cb)=>{ 
        cb(null, Date.now() + '-' + file.fieldname + path.extname(file.originalname)) 
    }
})  

const upload = multer({storage: storage})
router.get('/edit',profileController.profileEdit);
router.post('/edit', profileController.profileEdit);
router.get('/:id',profileController.profile);

module.exports = router;