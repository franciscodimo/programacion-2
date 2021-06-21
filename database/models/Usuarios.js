//los modelos son pedasos de codigo que describen como van a ser nuestras entidades u objeto de negocio
module.exports = (sequelize, DataTypes) =>{
    let alias = 'usuarios';
    let cols = {
        id: {
            autoIncrement: true ,
            primaryKey: true,
            type: DataTypes.INTEGER
        },
        nombre:{
            type: DataTypes.STRING
        },
        apellido:{
            type: DataTypes.BOOLEAN
        },
        fecha_de_nacimiento:{
            type: DataTypes.DATE
        },
        email:{
            type: DataTypes.STRING
        },
        telefono:{
            type: DataTypes.STRING
        },
        password:{
            type: DataTypes.STRING
        },
        imagen:{
            type: DataTypes.STRING
        }
    }

    // let config = {   
//     tableName: 'usuarios',
// }, //si trbajamos con nomnclatura generica, no hace falta hacer el let configs

    let configs = {
        tableName: 'usuarios',
        timestamps: false,
    }
    const Usuarios = sequelize.define(alias, cols, configs);

    Usuarios.associate = function(models){
        Usuarios.hasMany(models.productos, {
            as:'usuario_productos',
            foreignKey: 'usuario_id'
        })
        Usuarios.hasMany(models.comentarios, {
            as:'comentarios_usuario',
            foreignKey: 'usuario_id'
        })}
        
    return Usuarios;
    }
    
    
    
    
//esta estructura tenemos que hacerlo con todas la tablas 
    
