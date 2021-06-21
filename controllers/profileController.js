let db = require("../database/models");
let profileController = {
<<<<<<< HEAD
   profile:  async function (req, res) {
    let productos = await db.productos.findAll({
      where: { usuario_id: req.params.id },
    }
    )
    let comentarios = await db.comentarios.findAll({
      include: [{association:'producto'}],
      where: { usuario_id: req.params.id },
    })
     let usuario = await db.usuarios.findByPk(req.params.id)
    res.render('profile', {
      productos: productos,
      comentarios: comentarios,
      usuario: usuario
    })
   
  },
  profileEdit: function (req, res) {
    res.render('profile-edit')
  }, 
 
=======
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
>>>>>>> 59d924fc7314b36fd5e36135f4ecd56b0be69d4d
}

module.exports = profileController;

