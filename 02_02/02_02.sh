#!/bin/bash

echo "FROM node:14
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 8081
CMD [\"node\", \"server.js\"]" > Dockerfile

echo "{
    \"name\": \"node-app\",
    \"version\": \"1.0.0\",
    \"description\": \"app\",
    \"main\": \"server.js\",
    \"scripts\": {
        \"start\": \"node server.js\"
    },
    \"author\": \"\",
    \"license\": \"ISC\",
    \"dependencies\": {
        \"express\": \"^4.17.1\"
    }
    }" > package.json

echo "const express = require('express');
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
});" > server.js

docker build -t node-app .
docker run -p 8081:8081 node-app


