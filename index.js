import express from 'express';
import cors from 'cors';
import { Client } from 'pg';
import 'dotenv/config';
import translationRoutes from './routes/translation.js';
import productRoutes from './routes/products.js';
import authRoutes from './routes/auth.js';
import morgan from 'morgan';
import cookieParser from 'cookie-parser';
import { authenticateToken } from './middleware/authenticateToken.js';
const app = express();
const PORT = process.env.PORT || 3001;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(morgan('dev'));
app.use(
  cors({
    origin: ['http://localhost:5173',"http://202.51.82.227:4173"],
    credentials: true,
    methods: ['GET', 'PUT', 'POST', 'DELETE', 'OPTIONS'],
  }),
);
app.use(cookieParser());
let client;
(async () => {
  client = new Client({
    connectionString: process.env.POSTGRES_URI,
    ssl: { rejectUnauthorized: false },
  });

  await client.connect();
  console.log('Database connected successfully');

  app.get('/', (req, res) => {
    res.send('Hello, World!');
  });
  app.use('/api/v1/auth', authRoutes);
  app.use('/api/v1/translations', translationRoutes);
  app.use('/api/v1/products', authenticateToken, productRoutes);
  app.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}`);
  });
})();

export { client };
