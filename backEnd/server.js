const express = require('express');
const dotenv = require('dotenv');
const connectDB = require('./config/db');
const faqRoutes = require('./routes/faqRoutes');
const noticiasRoutes = require('./routes/noticiasRoutes');
const usuariosRoutes = require('./routes/usuariosRoutes');

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

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
