import express from 'express';
import pkg from 'mongodb';

const app = express();
const { MongoClient } = pkg;
const client = new MongoClient('mongodb://mongo:27017/');

app.get('/', async (req, res) => {
    await client.connect();

    const stats = await client.db('test').stats();
    res.status(200).json(stats);

    client.close();
});

app.listen(8080, () => console.log('Server is running on port 8080'));