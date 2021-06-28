var express = require('express');
var router = express.Router();
const multer = require ('multer');
const path = require ('path');
const productController = require('../controllers/productControllers');

var storage = multer.diskStorage({
    destination: (req, file, cb) => { //metodo //definimos la ruta donde se va a almacenar el archivo
        cb(null, './public'); //en esta linea le debemos indicar una ruta que representa donde se va a guardar el archivo y el null es como error
    },
    filename: (req, file, cb)=>{ //metodo //indicamos el nombre con el que se guardara el archivo
        cb(null, Date.now() + '-' + file.fieldname + path.extname(file.originalname)) // con date.now es el momento exacto en el que se sube el archivo, el file.fieldname sirve para dar el nombre del archivo y por ultimo el .jpg de la extension
    }
})  
const upload = multer({storage: storage}) //en esta lineaa lo que hacemos es almacenar el archivo con un objeto con la variable storage que fue nombrada previamente 

router.get('/:id', productController.product);
router.get('/', productController.form);
router.post('/', upload.single('url_imagen'), productController.create); //aca se le pasa el upload.single para cargar la imagen y el nombre del input del formulario donde tengo el file
router.post('/:id/comentar', productController.comentarios);
router.post('/', productController.add);
router.all("/:id/delete", productController.eliminarProducto);
module.exports = router; 
 //todo este desarrollo de multer aca forma una especie de middlewere, este middlewere es algo que se ejecuta siempre y tiene la carecteristica de ir devolviendo y migrando los distintos tipos de request y response