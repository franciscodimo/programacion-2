var product = require ('../modules/product') 
    let searchController = { 
        search: function(req, res) {
          let search = req.query.search
            res.render('searchResults', {
                product:product,
                logueado:false,
                search:search,

            })
        }}
        
module.exports = searchController;
