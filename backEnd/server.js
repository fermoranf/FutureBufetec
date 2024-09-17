const express = require('express');
const dotenv = require('dotenv');
const connectDB = require('./config/db');
//const itemRoutes = require('./routes/itemRoutes');

dotenv.config();
connectDB();

const app = express();
app.use(express.json()); // Middleware for parsing JSON

// Use item routes
//app.use('/api/items', itemRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
