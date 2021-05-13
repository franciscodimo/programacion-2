let db = require("../database/models");
let indexController = { 
	index: function (req, res) {
		db.productos.findAll({
		limit: 5
		})

		.then((data) => {
			return res.render('/index', {
				products: data
			})
		})

		.catch((error) => {
			return res.send(error);
		})}}
	
	



  module.exports = indexController;