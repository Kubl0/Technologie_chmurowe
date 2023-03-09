const express = require('express');
const app = express();

app.get('/', (req, res) => {
  const currentTime = new Date();
  const response = {
    date: currentTime.toDateString(),
    time: currentTime.toTimeString()
  }
    res.send(response); 
});

app.listen(8081, () => {
  console.log('Server running at http://localhost:8081/');
});
