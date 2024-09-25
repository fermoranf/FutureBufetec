const USUARIOS = require("../schemas/usuariosSchema");

const idByEmail = async (email) => {
    try {
        const usuario = await USUARIOS.findOne({ correo: email });
        return usuario ? usuario._id : null;
    } catch (error) {
        throw new Error('Error al buscar el usuario por email');
    }
};

const updateDescription = async (_id, newDescription) => {
    try {
        return await USUARIOS.findByIdAndUpdate(_id, { descripcion: newDescription }, { new: true });
    } catch (error) {
        throw new Error('Error al actualizar la descripción');
    }
};

const updateEspecialidad = async (_id, newEspecialidad) => {
    try {
        return await USUARIOS.findByIdAndUpdate(_id, { especialidad: newEspecialidad }, { new: true });
    } catch (error) {
        throw new Error('Error al actualizar la especialidad');
    }
};


exports.getUsuarios = async (req, res) => {
    try {
        const usuarios = await USUARIOS.find();
        res.status(200).json(usuarios);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};

exports.getUsuarioByEmail = async (req, res) => {
    const email = req.params.email;

    try {
        const usuario = await USUARIOS.findOne({ correo: email });
        if (!usuario) {
            return res.status(404).json({ message: 'Usuario no encontrado' });
        }
        res.status(200).json(usuario);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};

exports.updateDescriptionAndEspecialidad = async (req, res) => {
    const { email, newDescription, newEspecialidad } = req.body;

    try {
        const userId = await idByEmail(email);

        if (!userId) {
            return res.status(404).json({ message: 'Usuario no encontrado' });
        }

        const updatedDescription = await updateDescription(userId, newDescription);
        const updatedEspecialidad = await updateEspecialidad(userId, newEspecialidad);

        const updatedUser = await USUARIOS.findById(userId);
        res.status(200).json(updatedUser);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};

exports.getClientes = async (req, res) => {
    try {
        const clientes = await USUARIOS.find({ tipo: "cliente" });
        res.status(200).json(clientes);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};


exports.getAbogados = async (req, res) => {
    try {
        const abogados = await USUARIOS.find({ tipo: "abogado" });
        res.status(200).json(abogados);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};

//get picture of abogado
exports.getPicture = async (req, res) => {
    const email = req.params.email;
    try {
        const usuario = await USUARIOS.findOne({ correo: email });
        if (!usuario) {
            return res.status(404).json({ message: 'Usuario no encontrado' });
        }
        res.status(200).json(usuario.foto);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};

//update picture of abogado
exports.updatePicture = async (req, res) => {
    const { email, newPicture } = req.body;

    try {
        const userId = await idByEmail(email);

        if (!userId) {
            return res.status(404).json({ message: 'Usuario no encontrado' });
        }

        await USUARIOS.findByIdAndUpdate(userId, { foto: newPicture }, { new: true });

        const updatedUser = await USUARIOS.findById(userId);
        res.status(200).json(updatedUser);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};