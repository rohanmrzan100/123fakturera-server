import cookieParser from 'cookie-parser';
import cors from 'cors';
import 'dotenv/config';
import express from 'express';
import morgan from 'morgan';
import { connectDB } from './config/db.js';
import { authenticateToken } from './middleware/authenticateToken.js';
import authRoutes from './routes/auth.js';
import productRoutes from './routes/products.js';
import translationRoutes from './routes/translation.js';
const app = express();
const PORT = process.env.PORT || 3001;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(morgan('dev'));
app.use(
  cors({
    origin: ['http://localhost:5173', 'http://202.51.82.227:4173'],
    credentials: true,
    methods: ['GET', 'PUT', 'POST', 'DELETE', 'OPTIONS'],
  }),
);
app.use(cookieParser());
(async () => {
  await connectDB();
  app.get('/', (req, res) => {
    res.json({ message: 'Hello, World!, Health Check ' });
  });
  app.use('/api/v1/auth', authRoutes);
  app.use('/api/v1/translations', translationRoutes);
  app.use('/api/v1/products', authenticateToken, productRoutes);

  app.use((req, res, next) => {
    const error = new Error(`Endpoint Not Found -> ${req.originalUrl}`);
    error.statusCode = 404;
    next(error);
  });

  app.use((error, req, res, next) => {
    const statusCode = error.statusCode || 500;
    console.error(error);
    res.status(statusCode).json({
      status: 'error',
      message:
        process.env.NODE_ENV === 'production'
          ? 'An unexpected server error occurred.'
          : error.message || 'An unexpected server error occurred.',
    });
  });
  app.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}`);
  });
})();
