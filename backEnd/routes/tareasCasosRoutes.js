const express = require('express');
const tareasCasosController = require("../controllers/tareasCasosController");

const router = express.Router()

router.get("/", tareasCasosController.gettareasCasos)

module.exports = router;
