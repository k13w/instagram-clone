'use strict';
module.exports = (sequelize, DataTypes) => {
  const Post = sequelize.define('Post', {
    author: DataTypes.STRING,
    place: DataTypes.STRING,
    description: DataTypes.STRING,
    hashtags: DataTypes.STRING,
    image: DataTypes.STRING,
    likes: {
      type: DataTypes.INTEGER,
      defaultValue: 0
    }
  }, {});
  Post.associate = function(models) {
    // associations can be defined here
  };
  return Post;
};