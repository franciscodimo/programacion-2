let db = require("../database/models");
let indexController = { 
	index: function (req, res) {
		db.productos.findAll({
			order: [
                [ 'created_at', 'ASC' ]
            ],
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