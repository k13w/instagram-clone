'use strict';
module.exports = (sequelize, DataTypes) => {
  const User = sequelize.define('User', {
    username: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: {
          msg: "Esse campo não pode ser vazio!"
        },
        len: {
          args: [3, 20],
          msg: "Esse campo deve ter entre 3-20 caracteres!"
        }
      }
    },
    password: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: {
          msg: "Esse campo não pode ser vazio!"
        },
      }
    },
    email: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        isEmail: {
          msg: "Preencha um E-mail válido!"
        },
        notEmpty: {
          msg: "Esse campo não pode ser vazio!"
        },
      }
    },
  }, {});
  User.associate = function(models) {
    // associations can be defined here
  };
  return User;
};