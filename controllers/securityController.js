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
                                    .then((data) => {
                                    if (bcrypt.compareSync(req.body.password, user.password)) {
                                    req.session.data = data;
                                    if(req.body.rememberme) {
                                     res.cookie('userId', usuario.id)
                                     }            
                                        
                                        
                                        return res.redirect('/');
                                    }
                                    res.redirect('/login?failed=true');
                                })
                                .catch((error) => {
                                    throw error
                                })
                            },
                            register: function (req, res) {
                                if (req.method == 'POST') {
                                   
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
                                return res.redirect('/logout');
                            }
}
module.exports = securityController;