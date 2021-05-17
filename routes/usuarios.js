module.exports = router;
var express = require ('express');
const usersController = require('../controllers/userController');
var router = express.Router();
const db = require ('../database/models');

/*GET home page*/

router.get('/', usersController.index) /*{
        let usuarios = db.usuarios.findAll()
        .then((data) => {
            return res.send(data)

        })
        .catch((error) =>{
            return res.send(error)
        })
})
*/
module.exports = router
