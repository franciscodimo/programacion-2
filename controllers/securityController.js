let db = require('../database/models');
const bcrypt = require('bcryptjs')

let securityController = {
    login: function (req, res) {
        return res.render('security/login', {
            failed: req.query.failed,
        });
    },
    authenticate: function (req, res) {
        db.usuarios.findOne({ where: { email: req.body.email } })
            .then((user) => {

                if (bcrypt.compareSync(req.body.password, user.password)) {

                    req.session.user = user;

                    if (req.body.rememberme) {
                        res.cookie('userId', user.id)
                    }
                    res.redirect('/');

                }
                else {
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


            let nuevoUsuario = {
                nombre: req.body.nombre,
                apellido: req.body.apellido,
                fecha_de_nacimiento: req.body.fecha_de_nacimiento,
                email: req.body.email,
                telefono: req.body.telefono,
                password: req.body.password,
                imagen: req.file.filename,
            }
            db.usuarios.create(nuevoUsuario)


                .then(() => {
                    return res.redirect('/');
                })

                .catch((error) => {
                    return res.send(error);
                })
        }

        /*let errors = {
            if(req.body.email == ""){
                errors.message = "email cannnot be empty";
                res.locals.errors = errors;                                   
                return res.render('register')
            ((Preguntar a Pehuen, validacion de formularios))
    }}*/



        if (req.method == 'GET') {
            return res.render('security/register');
        }
    },

    logout: function (req, res) {
        req.session.destroy();
        res.clearCookie('userId')
        return res.redirect('/');
    },

}
module.exports = securityController;