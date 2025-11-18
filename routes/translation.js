import express from 'express';
import { client } from '../index.js';
const router = express.Router();

router.get('/', async (req, res) => {
  res.json({ msg: 'translation routes' });
});

router.get('/:lang', async (req, res) => {
  try {
    const { lang } = req.params;
    const result = await client.query('SELECT key, value FROM translations WHERE language = $1', [
      lang,
    ]);
    const translations = {};
    result.rows.forEach((row) => {
      translations[row.key] = row.value;
    });
    res.json(translations);
  } catch (error) {
    console.error('Error fetching translations:', error);
    res.status(500).json({ error: 'Failed to fetch translations' });
  }
});
// const data = {
//   Home: 'Hem',

//   Order: 'Beställ',

//   'Our Customers': 'Våra Kunder',

//   'About us': 'Om oss',

//   'Contact Us': 'Kontakta oss',
// };

router.post('/add', async (req, res) => {
  if (!req.body || Object.keys(req.body).length === 0) {
    return res.status(400).json({ error: 'No data received' });
  }
  try {
    const translations = req.body;

    const queryText = `
      INSERT INTO translations (key, language, value)
      VALUES ($1, $2, $3)
      ON CONFLICT (key, language)
      DO UPDATE SET value = EXCLUDED.value
    `;

    for (const [enText, svText] of Object.entries(translations)) {
      await client.query(queryText, [enText, 'en', enText]);
      await client.query(queryText, [enText, 'sv', svText]);
    }

    res.json({ message: 'English and Swedish translations saved successfully' });
  } catch (error) {
    console.error('Error:', error);
    res.status(500).json({ error: 'Failed to save' });
  }
});
router.post('/add-with-key', async (req, res) => {
  if (!req.body || Object.keys(req.body).length === 0) {
    return res.status(400).json({ error: 'No data received' });
  }
  try {
    const translations = req.body;
    const key = translations.key;
    const text = translations.text;
    const lang = translations.lang;
    const queryText = `
      INSERT INTO translations (key, language, value)
      VALUES ($1, $2, $3)
      ON CONFLICT (key, language)
      DO UPDATE SET value = EXCLUDED.value
    `;

    await client.query(queryText, [key, lang, text]);

    res.json({ message: 'English and Swedish translations saved successfully' });
  } catch (error) {
    console.error('Error :', error);
    res.status(500).json({ error: 'Failed to save' });
  }
});

export default router;
