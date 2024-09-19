const USUARIOS = require("../schemas/usuariosSchema");

exports.getUsuarios = async (req, res) => {
    try {
        const usuarios = await USUARIOS.find();
        res.status(200).json(usuarios);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};
