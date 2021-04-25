var products = require ('../modules/product')
let productAddController = {
productAdd: function(req,res){
    res.render('product-add',{
        products:products,
        logueado:true
    })
}}
module.exports = productAddController;