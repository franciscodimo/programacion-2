'use strict';
//este index module nos va a permitir correr todos los modulos consecuentes de la base de datos

const fs = require('fs'); //fail server o sistem es una libreria para leer archivos
const path = require('path');
const Sequelize = require('sequelize');
const basename = path.basename(__filename);
const env = 'development'; //env se refiere a enviroment variable entorno
const config = require(__dirname + '/../config/config.js')[env]; //nos dicen donde estan los archivos
const db = {}; //objeto literal y lo devuelve y luego es exportado abajo de todo con el module exports 

let sequelize;
if (config.use_env_variable) {
  sequelize = new Sequelize(process.env[config.use_env_variable], config);
} else {
  sequelize = new Sequelize(config.database, config.username, config.password, config);
}

fs
  .readdirSync(__dirname) //es sincronico se hace en tiempo de ejecucion en cambio las promesas son asincronicas
  .filter(file => {
    return (file.indexOf('.') !== 0) && (file !== basename) && (file.slice(-3) === '.js');
  })
  .forEach(file => { //el formato de este archivo es una especie de callback que tiene estas funciones (sequelize y datatypes)
    const model = require(path.join(__dirname, file))(sequelize, Sequelize.DataTypes);
    db[model.name] = model; //fs lee todo lo que esta en la carpeta modelo y se lo envia a db y el que exporta es db
  });

Object.keys(db).forEach(modelName => {
  if (db[modelName].associate) {
    db[modelName].associate(db);
  }
});

db.sequelize = sequelize;
db.Sequelize = Sequelize;

module.exports = db;
