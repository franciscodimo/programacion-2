var product = require ('../modules/product')
let indexController = { 
	index: function(req,res) {
		res.render('index', {
			product
		})
	}
}


  module.exports = indexController;