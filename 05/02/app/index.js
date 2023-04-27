const express = require('express');
const app = express();
const port = process.env.APP_PORT || 3000;

app.get('/', (req, res) => {
    res.send('Witaj w Dockerze!');
});

app.listen(port, () => {
    console.log(`Serwer działa na http://localhost:${port}/`);
});
