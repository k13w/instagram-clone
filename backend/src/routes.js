const express = require('express');
const multer = require('multer');
const uploadConfig = require('./config/upload');

const authUser = require('./controllers/Auth');
const createUser = require('./controllers/User');
const createPost = require('./controllers/Post');
const likeController = require('./controllers/Like');
const aws = require('./controllers/aws');

const router = express.Router();
const upload = multer(uploadConfig);

router.get('/aws', aws.index);

router.post('/auth', authUser.store);
router.post('/create', createUser.store);
router.get('/posts', createPost.index);
router.post('/posts', upload.single('image'), createPost.store);

router.post('/posts/:id/like', likeController.store);

module.exports = router;