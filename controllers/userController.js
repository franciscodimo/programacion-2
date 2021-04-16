let userController = {
    login: function(req, res) {
        res.render('profile' ,{
            login:true 
        } )
    }
  
}

module.exports = userController;
