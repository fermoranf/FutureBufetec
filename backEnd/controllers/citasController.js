const citas = require('../schemas/citasSchema');

exports.getCitas = async (req, res) => {
    try {
      const items = await citas.find();
      res.status(200).json(items);
    } catch (error) {
      res.status(500).json({ message: error.message });
    }
  };
  