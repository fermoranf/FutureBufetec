const CASOS = require('../schemas/casosSchema');

exports.getCasos = async (req, res) => {
    try {
        const casos = await CASOS.find();
        res.status(200).json(casos);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};