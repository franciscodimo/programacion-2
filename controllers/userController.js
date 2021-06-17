let db = require("../database/models");

let usersController = {
    index: function (req, res) {
        let id = req.params.id;
        db.usuarios.findByPk(id)
        .then((data) => {
            
            res.render('profile' ,{
                product: data
            } )
        })
        .catch((error) => {
            return res.send(error);
        })
    },
    edit: async (req, res) => {
        let usuario = await db.usuarios.findByPk(req.params.id);

        return res.render('profile-edit', { 
            usuario: data
        });
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
