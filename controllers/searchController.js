let db = require("../database/models");
   let searchController = { 
        search: function (req, res) {
            let search = req.query.search
            db.productos.findAll({
            where: [{title: {[op.like]: '%'+search+'%'}}
            ]})
    
            .then((data) => {
                return res.render('/searchResults', {
                    product: data
                })
            })
    
            .catch((error) => {
                return res.send(error);
            })}}
    
        
module.exports = searchController;
