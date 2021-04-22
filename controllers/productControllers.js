var products = require ('../modules/product')
let productController = { 
	producto: function(req,res) {
		res.render('product', {
			logueado:true,
			product:products[req.params.id],

		})
	},
	productAdd: function(req,res){
		res.render('product-add',{
			product:products,
			logueado:true
		})
	}
}


  module.exports = productController;
