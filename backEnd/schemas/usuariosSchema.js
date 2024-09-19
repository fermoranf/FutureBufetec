const mongoose = require('mongoose');

const usuariosSchema = new mongoose.Schema({
    tipo: { type: String, required: true },
    id: { type: String, required: true },
    nombre: { type: String, required: true },
    correo: { type: String, required: true },
    caso_id: { type: String, required: true },

},{
    collection: 'usuarios'
});

module.exports = mongoose.model('USUARIOS', usuariosSchema);
