let db = require("../database/models");

let productController = {
	product: function (req, res) {
		var id = req.params.id
		db.productos.findByPk(id)
			.then((producto) => {
				db.comentarios.findAll({
					where: { producto_id: producto.id },
					include: [{ association: "usuario" }]

				})
					.then((comentarios) => {
						console.log(comentarios)
						return res.render('product', {
							product: producto,
							comentarios: comentarios
						});
					})
			})
			.catch((error) => {
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
      if(req.method === 'POST'){
        req.body.user_id = req.session.user.id;
		if (req.body.url) req.body.image = req.body.url;
		if (req.file) req.body.image = (req.file.destination + req.file.filename).replace('public', '');
		db.Product.create(req.body)
		.then(() => {
			return res.redirect('/');
		})

		.catch((error) => {
			return res.send(error);
		})
	  }
	  if (req.method === 'GET') {
		  const categoria = db.categorias.findAll();
		  res.render('product/add', {categoria});
		  
	  }
	},
	profile: function (req, res, next) {
    db.productos.findAll({
		where:{user_id: req.session.user.id},
	})
	.then(products => {
		db.comentarios.findAll({
			whew:{comentarios_id: req.session.user.id},
		})
		//tengo que hacer un find all de los comentarios que me pertenecen. Lo hago haciendo db.comentarios 
	})
	},
	

	//  async edit (req, res, next){
    //    const product = await db.Product.findByPk(req.params.id);
	//    if (req.method === 'POST'){
	// 	   product.update(req.body)
	// 	   .then((data) => {
            
    //         res.render('profile' ,{
    //             product: data
    //         } )
    //     })
    //     .catch((error) => {
    //         return res.send(error);
    //     })
	//    }
	// },
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
	})
	},


}
module.exports = productController;

