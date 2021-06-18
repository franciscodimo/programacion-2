let db = require("../database/models");
let profileController = {
    profile: function(req, res) {
      let productos = db.productos.findByPk({
        where: { 
          usuario_id: req.session.user.id,
        }    
          
      })
        res.render('profile' ,{
            productos:productos,
            product: data
        } )
        
    },
    edit: (req, res) => {
      let usuarios =  db.usuarios.findByPk(req.params.id)
      .then((data) => {
          res.render('profile-edit' ,{
              usuario: data,
          } )
      })
      .catch((error) => {
          return res.send(error);
      })
      
  },
}

module.exports = profileController;

