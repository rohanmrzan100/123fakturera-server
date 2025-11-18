import express from 'express';
import { client } from '../index.js';

const router = express.Router();

router.get('/all', async (req, res) => {
  try {
    const result = await client.query('SELECT * FROM products ORDER BY article_no ASC');
    res.json(result.rows);
  } catch (error) {
    console.error('Error products:', error);
    res.status(500).json({ error: 'Failed to fetch products' });
  }
});
router.post('/add', async (req, res) => {
  try {
    const { article_no, product_name, in_price, price, unit, in_stock, description } = req.body;

    const result = await client.query(
      `INSERT INTO products (article_no, product_name, in_price, price, unit, in_stock, description)
       VALUES ($1, $2, $3, $4, $5, $6, $7)
       RETURNING *`,
      [article_no, product_name, in_price, price, unit, in_stock, description],
    );
    res.status(201).json(result.rows[0]);
  } catch (error) {
    console.error('Error :', error);
    res.status(500).json({ error: 'Failed to add ' });
  }
});
router.put('/:id', async (req, res) => {
  try {
    const { id } = req.params;
    const updates = req.body;
    console.log(updates);
    const fields = Object.keys(updates);
    const field = fields[0];
    const value = updates[field];

    const result = await client.query(
      `UPDATE products SET ${field} = $1 WHERE article_no = $2 RETURNING *`,
      [value, id],
    );

    if (result.rows.length === 0) {
      return res.status(404).json({ error: 'product not found' });
    }
    // res.send('Hello');
    res.json(result.rows[0]);
  } catch (error) {
    console.error('Error:', error);
    res.status(500).json({ error: 'Failed to update !' });
  }
});

export default router;
