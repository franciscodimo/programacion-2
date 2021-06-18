let db = require("../database/models");

let usersController = {
    index: function (req, res) {
        let id = req.params.id;
        db.usuarios.findByPk(id)
        .then((data) => {
            
            res.render('profile' ,{
                product: data,
            } )
        })
        .catch((error) => {
            return res.send(error);
        })
    },
    
}
//   register: function(req,res){
//     res.render('register' ,{
//         products:products,
//         logueado:true
//     } )
//   },
//   login: function(req,res){
//     res.render('login' ,{
//         products:products,
//         logueado:false
//     } )
//   },
// }

module.exports = usersController;
