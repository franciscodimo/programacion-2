let db = require('../database/models');
const bcrypt = require('bcryptjs')

let securityController = {
                            login: function (req, res) {
                                return res.render ('security/login', {
                                    failed: req.query.failed
                                });
                            },
                              authenticate: function (req, res) {
                                db.usuarios.findOne({ where: { email: req.body.email } })
                                    .then((user) => {
                                        
                                        if (bcrypt.compareSync(req.body.password, user.password)) {
                                            
                                            req.session.user = user;
                                            
                                            if(req.body.rememberme) {
                                                res.cookie('userId', user.id)
                                            }
                                            res.redirect('/');
                                            
                                        }
                                        else{
                                            res.redirect('/login?failed=true');
                                        }
                                            
                                        
                                    
                                })
                                .catch((error) => {
                                    
                                    res.redirect('/login?failed=true');
                                })
                            },
                            register: function (req, res) {
                                if (req.method == 'POST') {
                                    req.body.password = bcrypt.hashSync(req.body.password);
                                    db.usuarios.create(req.body)
                                    .then(() => {
                                        return res.redirect('/')
                                    })
                                    .catch((error) => {
                                        return res.send(error);
                                    })
                                }
                        
                                if (req.method == 'GET') {
                                    return res.render('security/register');
                                }},

                            logout: function(req, res){
                                req.session.destroy ();
                                res.clearCookie('userId')
                                return res.redirect('/');
                            }
}
module.exports = securityController;