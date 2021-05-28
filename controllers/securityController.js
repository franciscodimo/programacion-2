let db = require('../database/models');
const bcrypt = require('bcryptjs')

let securityController = {
                            login: function (req, res) {
                                return res.render ('security/login', {
                                    failed: req.query.failed
                                });
                            },
                            authenticate: function (req, res) {
                                db.usuarios.findOne({where : {email : req.body.email}})
                                .then((user)=> {
                                    if (bcrypt.hashSync(req.body.password) == usuarios.password){
                                        req.session.user = user;
                                        if (req.body.rememberme){
                                            res.cookie('userId', user.id, {maxAge: 1000 * 60 * 60 * 24 * 365 /*(un anio)*/ }) 
                                        }
                                        
                                        
                                        return res.redirect('/');
                                    }
                                    res.redirect('/login?failed=true');
                                })
                                .catch((error) => {
                                    throw error
                                })
                            },
                            register: function(req,res){
                                req.body.password = bcrypt.hashSync(req.body.password)
                                if (req.method == 'POST');
                                db.user.create(req.body)
                        
                                .then(() => {
                                    return res.redirect('/');
                                })
                        
                                .catch((error) => {
                                   throw error
                                })  
                            },
                            logout: function(req, res){
                                req.session.destroy ();
                                res.clearCookie('userId')
                                return res.redirect('/logout');
                            }
}
module.exports = securityController;