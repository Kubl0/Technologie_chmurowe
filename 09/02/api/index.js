const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello World');
});

app.get('/ready', (req, res) => {
  res.send("Ready");
});

app.listen(3000, () => {
  console.log('Server listening on port 3000');
});