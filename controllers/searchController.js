let db = require("../database/models");
const {Op} = require("sequelize")
   let searchController = { 
        search: function (req, res) {
            let search = req.query.search
            db.productos.findAll({
            where: [{nombre: {[Op.like]: '%'+search+'%'}}
            ]})
    
            .then((data) => {
                return res.render('searchResults', {
                    product: data
                })
            })
    
            .catch((error) => {
                return res.send(error);
            })}}
    
        
module.exports = searchController;
