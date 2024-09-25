const express = require('express');
const casosController = require('../controllers/casosController');

const router = express.Router();

router.get('/', casosController.getCasos);
router.get('/:id', casosController.getCasoById);

module.exports = router;

