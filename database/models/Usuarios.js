//los modelos son pedasos de codigo que describen como van a ser nuestras entidades u objeto de negocio
module.exports = (sequelize, DataTypes)  => {

let alias = 'Usuarios';

let cols = {
    id:{
        autoIncrement:true,
        primaryKey:true,
        type: DataTypes.INTEGER
    },
    nombre: {
        type: DataTypes.STRING
    },
    apellido: {
        type: DataTypes.STRING
    },
    fecha_nacimiento:{
        type: DataTypes.DATE
    },
    email: {
        type: DataTypes.STRING
    },
   
},

// let config = {   
//     tableName: 'usuarios',
// }, //si trbajamos con nomnclatura generica, no hace falta hacer el let configs


const Usuario =  sequelize.define(alias, cols, config);
return Usuario;
}

//esta estructura tenemos que hacerlo con todas la tablas 