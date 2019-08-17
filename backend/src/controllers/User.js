const services = require('../services');

module.exports = {
    async store(req, res) {

        try {
            const user  = await services.createUser(req.body)
            console.log(user)
            return res.send({ user })
        } catch (err) {
            res.status(400).send({ error: err})
        }
    }
}