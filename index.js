import express from 'express';
import cors from 'cors';
import { Client } from 'pg';
import 'dotenv/config';
import translationRoutes from './routes/translation.js';
import authRoutes from './routes/auth.js';
import morgan from 'morgan';
import cookieParser from 'cookie-parser';
const app = express();
const PORT = process.env.PORT || 3001;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(morgan('dev'));
app.use(
  cors({
    origin: ['http://localhost:5173'],
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
  app.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}`);
  });
})();

export { client };
