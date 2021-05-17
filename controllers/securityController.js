let db = require('../database/models');

let securityController = {
                            login: function (req, res) {
                                return res.render ('security/login');
                            },
                            authenticate: function (req, res) {
                                db.User.findOne({where: {email: req.body.email}})
                                .then((user)=> {
                                    if (req.body.password == user.password){
                                        req.session.user = user;
                                        return res.redirect('/');
                                    }
                                    res.redirect('/login?failed=true');
                                })
                                .catch((error) => {
                                    res.redirect('/login?failed=true');
                                })
                            },
                            register: function(req,res){
                                if (req.method == 'POST');
                                db.user.create(req.body)
                        
                                .then(() => {
                                    return res.redirect('/');
                                })
                        
                                .catch((error) => {
                                    return res.send(error);
                                })  
                            },
                            logout: function(req, res){
                                req.session.destroy ();
                                return res.redirect('/logout');
                            }
}
module.exports = securityController;