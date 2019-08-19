const multer = require('multer');
const path = require('path');
const aws = require('aws-sdk');
const multerS3 = require('multer-s3');
const crypto = require('crypto');

const storageTypes = {
    local: new multer.diskStorage({
        destination: path.resolve(__dirname, '..', '..', 'uploads'),
        filename: function(req, file, callback) {
            crypto.randomBytes(16, (err, hash) => {
                if (err) callback(err);

                const fileName = `${hash.toString('hex')}-${file.originalname}`;

                callback(null, fileName);
            })
        } 
    }),

    s3: multerS3({
        s3: new aws.S3(),
        bucket: 'instagram-upload-js',
        contentType: multerS3.AUTO_CONTENT_TYPE,
        acl: 'public-read',
        key: (req, file, callback) => {
            crypto.randomBytes(16, (err, hash) => {
                if (err) callback(err);

                const fileName = `${hash.toString('hex')}-${file.originalname}`;

                callback(null, fileName);
            })
        }
    })
}

module.exports = {
    destination: path.resolve(__dirname, '..', '..', 'uploads'),
    storage: storageTypes['s3'],
};