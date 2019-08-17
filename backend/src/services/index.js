const db = require('../db/models');

module.exports = {
    authUser: payload => db.User.findOne(payload),
    createUser: payload => db.User.create(payload),
    createPost: payload => db.Post.create(payload),
    findPost: payload => db.Post.findAll(payload),
    findPostId: payload => db.Post.findOne(payload)
}