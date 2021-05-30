let db = require("../database/models");
let indexController = { 
	index: function (req, res) {
		db.productos.findAll({
		limit: 12	
		})

		.then((data) => {
			return res.render('index', {
				product: data
			})
		})

		.catch((error) => {
			return res.send(error);
		})}}
	


  module.exports = indexController;