let db = require("../database/models");
let productAddController = {
  form: function(req,res){
        res.render('product-add');
},
 create: function(req, res){
    db.productos.create(req.body)

    .then(() => {
        return res.redirect('/productos');
    })

    .catch((error) => {
        return res.send(error);
    })},





}
module.exports = productAddController;