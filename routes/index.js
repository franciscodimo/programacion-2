var express = require('express');
var router = express.Router();
let indexController = require('../controllers/indexController');
const products = require('../modules/product');

/* GET home page. */
router.get('/', indexController.index);

module.exports = router;

// pasar register a controladores.
// agregar metodo register a usercontroller y vista register
// en la vista de register debe dar un formulario 
// hacer todo de login (formulario)
// modificar el navegador 
// corregir lo de mas comentados (repetir el mismo for en los mas comentados)
// hacer todo sobre agregar producto (un formulario que tiene que tener los mismos campos que products ejs)
// tiene que verse el boton agregar producto, solo si esta logueado
