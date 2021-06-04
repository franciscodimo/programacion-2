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
	categoria:  function(req, res){
		let categoria =  req.params.id
		db.categoria.findByPk(id)

			.then((categorias) => {
				categoria: product
			})
	}
	
		// form: function(req, res){
		// 	res.render('product-add');
		// 	},
	 	// create: function(req, res){
		// db.productos.create(req.body)
			
		// .then(() => {
		// 	return res.redirect('/');
		// })
	
		// .catch((error) => {
		// 	return res.send(error);
		// })},
	}
	


  module.exports = productController;

  