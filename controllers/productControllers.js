let db = require("../database/models");

let productController = {
	product: function (req, res) {
		var id = req.params.id
		db.productos.findByPk(id,{
			include: [{ association: "usuario" }]
		})
			.then((producto) => {
				console.log(producto)
				db.comentarios.findAll({
					where: { producto_id: producto.id },
					include: [{ association: "usuario" }]
				})
					.then((comentarios) => { //promesa anidada
						console.log(comentarios)
						return res.render('product', {
							product: producto,
							comentarios: comentarios
						});
					})
			})
			.catch((error) => {
				console.log(error)
				return res.send(error);
				
			})
	},
	// categoria:  function(req, res){
	// 	let categoria =  req.params.id
	// 	db.categoria.findByPk(id)

	// 		.then((categorias) => {
	// 			categoria: product
	// 		})
	// }

	form: function (req, res) {
		db.categorias.findAll()
			.then(categorias => {
				res.render('product-add', {
					categorias: categorias
				});
			})
	},
	comentarios: function (req, res) {

       
		let nuevoComentario = {
			producto_id: req.params.id,
			usuario_id: req.session.user.id,
			texto_comentario: req.body.texto_comentario,
			created_at: req.body.created_at,
		}
		db.comentarios.create(nuevoComentario)


			.then(() => {
				return res.redirect(req.get('Referrer'));
			})

			.catch((error) => {
				return res.send(error);
			})
	},
	add(req, res){
		  const categoria = db.categorias.findAll();
		  res.render('product/add', {categoria});
		  },
	 async edit (req, res, next){
       const product = await db.Product.findByPk(req.params.id);
	   if (req.method === 'POST'){
		   product.update(req.body)
		   .then((data) => {
            
            res.render('profile' ,{
                product: data
            } )
        })
        .catch((error) => {
            return res.send(error);
        })
	   }
	},
	create: function(req, res){

		 req.body.usuario_id = req.session.user.id;
		if (req.file) req.body.url_imagen = (req.file.destination + req.file.filename).replace('public', ''); //req.file lo que nos devuelve es un objeto con propiedades
		if (req.body.url) req.body.url_imagen = req.body.url;
		console.log(req.body)
		db.productos.create(req.body)
		.then(() => {
			return res.redirect('/');
		})

		.catch((error) => {
			return res.send(error);
		})
	},
	eliminarProducto(req, res, next) {
		db.productos.destroy({ where: { id: req.params.id } })
		  .then(() => {
			req.flash('warning', 'Producto eliminado');
			res.redirect('/');
		  })
		  .catch((error) => {
			req.flash('danger', '¡Algo ha salido mal!');
			next(error);
		  });
	  },
	  
	


}
module.exports = productController;

