const express = require('express');
const casosController = require('../controllers/casosController');

const router = express.Router();

router.get('/', casosController.getCasos);

module.exports = router;
