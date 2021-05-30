let db = require("../database/models");
let profileController = {
    profile: function(req, res) {
      let productos = db.productos.findAll ({
        where: { 
          usuario_id: req.session.user.id,
        }
      })
        res.render('profile' ,{
            productos:productos,
            
        } )
        
    },
  profileEdit: function(req, res){
    res.render('profile-edit' ,{
        
        
    } )
  }
}

module.exports = profileController;