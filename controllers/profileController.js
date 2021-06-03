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
  profileEdit: function(req, res){
    res.render('profile-edit' ,{
        
        
    } )
  }
}

module.exports = profileController;

