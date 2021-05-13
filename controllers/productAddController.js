let db = require("../database/models");
let productAddController = {
productAdd: function(req,res){
        db.productos.create(req.body)

        .then(() => {
            return res.redirect('/productos');
        })

        .catch((error) => {
            return res.send(error);
        })},




    
}
module.exports = productAddController;