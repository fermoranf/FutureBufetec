const FAQ = require('../schemas/faqSchema');

exports.getItems = async (req, res) => {
    try {
      const items = await FAQ.find();
      res.status(200).json(items);
    } catch (error) {
      res.status(500).json({ message: error.message });
    }
  };
  