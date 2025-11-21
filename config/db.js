import { Client } from 'pg';
import 'dotenv/config';

const client = new Client({
  connectionString: process.env.POSTGRES_URI,
  ssl: {
    rejectUnauthorized: false,
  },
});

const connectDB = async () => {
  try {
    await client.connect();
    client.on('error', (err) => {
      console.error('PostgreSQL client error:', err.message);
    });
    console.log('Database connected successfully');
  } catch (error) {
    console.error('Database connection failed', error.message);
    process.exit(1);
  }
};

export { client, connectDB };
