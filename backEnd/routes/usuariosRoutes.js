const express = require('express');
const usuariosController = require("../controllers/usuariosController");

const router = express.Router()

router.get("/", usuariosController.getUsuarios)

module.exports = router;
