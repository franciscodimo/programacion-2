module.exports = router;
var express = require ('express');
var router = express.Router();
const db = require ('../database/models');

/*GET home page*/

router.get('/', function (req, res){
        let comentarios = db.comentarios.findAll()
        .then((data) => {
            return res.send(data)

        })
        .catch((error) =>{
            return res.send(error)
        })
})

module.exports = router