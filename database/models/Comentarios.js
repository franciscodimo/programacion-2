//los modelos son pedasos de codigo que describen como van a ser nuestras entidades u objeto de negocio
module.exports = (sequelize, DataTypes) =>{
    let alias = 'comentarios';
    let cols = {
        id: {
            autoIncrement: true ,
            primaryKey: true,
            type: DataTypes.INTEGER
        },
        usuario_id:{
            type: DataTypes.STRING
        },
        producto_id:{
            type: DataTypes.STRING
        },
        texto_comentario:{
            type: DataTypes.STRING
        },
        fecha_creacion:{
            type: DataTypes.DATE
        },
    }

    // let config = {   
//     tableName: 'usuarios',
// }, //si trbajamos con nomnclatura generica, no hace falta hacer el let configs

    let configs = {
        tableName: 'comentarios',
        timestamps: false,
    }
    const Comentarios = sequelize.define(alias, cols, configs);
    return Comentarios;
    }
    
    
    
    
//esta estructura tenemos que hacerlo con todas la tablas 
    
