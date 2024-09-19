const express = require('express');
const citasController = require("../controllers/citasController");

const router = express.Router()

router.get("/", citasController.getcitas)

module.exports = router;
