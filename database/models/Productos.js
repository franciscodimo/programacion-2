//los modelos son pedasos de codigo que describen como van a ser nuestras entidades u objeto de negocio

module.exports = (sequelize, DataTypes) =>{
    let alias = 'productos';
    let cols = {
        id: {
            autoIncrement: true ,
            primaryKey: true,
            type: DataTypes.INTEGER
        },
        categoria_id:{
            type: DataTypes.STRING
        },
        usuario_id:{
            type: DataTypes.INTEGER
        },
        nombre:{
            type: DataTypes.STRING
        },
        url_imagen:{
            type: DataTypes.STRING
        },
        descripcion:{
            type: DataTypes.STRING
        },
        precio:{
            type: DataTypes.INTEGER
        },
        created_at:{
            type: DataTypes.DATE
        },
    }

    // let config = {   
//     tableName: 'usuarios',
// }, //si trbajamos con nomnclatura generica, no hace falta hacer el let configs

    let configs = {
        tableName: 'productos',
        timestamps: false,
    }
    const Productos = sequelize.define(alias, cols, configs);

    Productos.associate = function(models){
        Productos.belongsTo(models.usuarios,{
            as:'usuario',
            foreignKey: 'usuario_id'
        })

    
    }
    return Productos;
    }
    
    
    
    
//esta estructura tenemos que hacerlo con todas la tablas 
    
