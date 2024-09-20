const express = require('express');
const dotenv = require('dotenv');
const connectDB = require('./config/db');
const faqRoutes = require('./routes/faqRoutes');
const noticiasRoutes = require('./routes/noticiasRoutes');
const usuariosRoutes = require('./routes/usuariosRoutes');
const citasRoutes = require('./routes/citasRoutes');
const casosRoutes = require('./routes/casosRoutes');
const tareasCasosRoutes = require('./routes/tareasCasosRoutes');

dotenv.config();
connectDB();

const app = express();
app.use(express.json());

// Use faq routes
app.use('/api/faq', faqRoutes);

// Use noticias routes
app.use('/api/noticias', noticiasRoutes);

// Use usuarios routes
app.use('/api/usuarios', usuariosRoutes);

// Use citas routes
app.use('/api/citas', citasRoutes);

// Use casos routes
app.use('/api/casos', casosRoutes);

// Use tareasCasos routes
app.use('/api/tareasCasos', tareasCasosRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

// Get all citas
// Get all citas por abogado
// Create a cita

// get all noticias titulo, fecha y id
// get noticias por id
// post noticias

// get all usuarios tipo abogado: nombre, especialidad
// get abogado by id: nombre, especialidad, descripcion y foto?

// get all casos numero, nombre y estado
// 
