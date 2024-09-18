const express = require('express');
const dotenv = require('dotenv');
const connectDB = require('./config/db');
const faqRoutes = require('./routes/faqRoutes');

dotenv.config();
connectDB();

const app = express();
app.use(express.json());

// Use faq routes
app.use('/api/faq', faqRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
