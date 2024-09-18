const express = require("express");
const faqController = require("../controllers/faqController");

const router = express.Router();

router.get('/', faqController.getItems);

module.exports = router;