var products = require ('../modules/product')

let profileController = {
    profile: function(req, res) {
        res.render('profile' ,{
            products:products,
            logueado:true
        } )
        
    },
  profileEdit: function(req, res){
    res.render('profile-edit' ,{
        logueado:true,
        
    } )
  }
}
module.exports = profileController;