var product = require ('../modules/product') 
    let searchController = { 
        search: function(req,res) {
            res.render('searchResults', {
                product:product,
                logueado:false,
            })
        }}
module.exports = searchController;
