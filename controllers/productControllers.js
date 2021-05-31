let db = require("../database/models");
let productController = { 
	product: function (req, res) {
            
		var id =  req.params.id
		db.productos.findByPk(id)
		.then((data) => {
			return res.render('product', { 
				product: data 
			});
		})

	.catch((error) => {
		return res.send(error);
	})
	}}


  module.exports = productController;
