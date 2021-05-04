//los modelos son pedasos de codigo que describen como van a ser nuestras entidades u objeto de negocio
module.exports = (sequelize, DataTypes) =>{
    let alias = 'categorias';
    let cols = {
        id: {
            autoIncrement: true ,
            primaryKey: true,
            type: DataTypes.INTEGER
        },
        nombre:{
            type: DataTypes.STRING
        },
        primary:{
            type: DataTypes.STRING  
        }}

    // let config = {   
//     tableName: 'usuarios',
// }, //si trbajamos con nomnclatura generica, no hace falta hacer el let configs

    let configs = {
        tableName: 'categorias',
        timestamps: false,
    }
    const categorias = sequelize.define(alias, cols, configs);
    return categorias;
    }
    
    
    
    
//esta estructura tenemos que hacerlo con todas la tablas 
    
