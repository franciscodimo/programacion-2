let db = require("../database/models");

let productController = { 
	product: function (req, res) {
		var id =  req.params.id
		db.productos.findByPk(id)
		.then((producto) => {
			db.comentarios.findAll({
				where: {producto_id: producto.id},
				include: [{association: "producto"}]
			})
			.then((comentarios) => {
				return res.render('product', { 
					product: producto,
					comentarios: comentarios
				});
			})
		})
		.catch((error) => {
			return res.send(error);
		})},
	// categoria:  function(req, res){
	// 	let categoria =  req.params.id
	// 	db.categoria.findByPk(id)

	// 		.then((categorias) => {
	// 			categoria: product
	// 		})
	// }

	form: function(req, res){
		db.categorias.findAll()
		.then(categorias =>{
			res.render('product-add', {
				categorias:categorias
			});
		})
},
 create: function(req, res){
	 let nuevoProducto = {
		 categoria_id: req.body.categoria_id,
		 usuario_id: req.session.user.id,
		 nombre: req.body.nombre,
		 url_imagen: req.file.filename,
		 descripcion: req.body.descripcion,
		 precio: req.body.price,
	 } 
    db.productos.create(nuevoProducto)
    

    .then(() => {
        return res.redirect('/');
    })

    .catch((error) => {
        return res.send(error);
    })},

}
  module.exports = productController;

  