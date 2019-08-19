const services = require('../services');
const sharp = require('sharp');
const path = require('path');
const fs = require('fs');

module.exports = {
    async index(req, res) {
        const posts = await services.findPost({
            order: [['createdAt', 'DESC']]
        })
        res.json(posts);
    },

    async store(req, res) {
        const { author, place, description, hashtags } = req.body;
        const { location: image } = req.file;

        try {
            await sharp(path)
            .resize(500)
            .jpeg({ quality: 70 })
            .toFile(
                path.resolve(image)
            )

        fs.unlinkSync(path);

        } catch (err) {
            console.log(err)
        }

        const post = await services.createPost({
            author,
            place,
            description,
            hashtags,
            image
        });

        req.io.emit('post', post);

        return res.send(post);
    }
};