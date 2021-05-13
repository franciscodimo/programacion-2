let db = require("../database/models");

let usersController = {
    index: function (req, res) {
        db.User.findAll()
        .then((data) => {
            return res.render('users', { 
                users: data 
            });
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
