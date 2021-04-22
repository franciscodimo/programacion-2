var product = require ('../modules/product')
let indexController = { 
	index: function(req,res) {
		res.render('index', {
			product,
			logueado:false,
		})
	}}
	
	



  module.exports = indexController;