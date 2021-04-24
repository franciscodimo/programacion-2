var products = require ('../modules/product')

let userController = {
    profile: function(req, res) {
        res.render('profile' ,{
            products:products,
            logueado:true
        } )
        
    },
  register: function(req,res){
    res.render('register' ,{
        products:products,
        logueado:true
    } )
  },
  login: function(req,res){
    res.render('login' ,{
        products:products,
        logueado:false
    } )
  }
  
}

module.exports = userController;
