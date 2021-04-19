var products = require ('../modules/product')

let userController = {
    profile: function(req, res) {
        res.render('profile' ,{
            profile:'logueado',
            product:products
        } )
        
    }
  
}

module.exports = userController;
