let db = require("../database/models");
let profileController = {
   profile:  async function (req, res) {
    let productos = await db.productos.findAll({
      where: { usuario_id: req.session.user.id },
    }
    )
    let comentarios = await db.comentarios.findAll({
      include: [{association:'producto'}],
      where: { usuario_id: req.session.user.id },
    })
    res.render('profile', {
      productos: productos,
      comentarios: comentarios
    })

  },
  profileEdit: function (req, res) {
    res.render('profile-edit', {


    })
  }
}

module.exports = profileController;

