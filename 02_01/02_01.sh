#!/bin/bash

echo "FROM node:12
WORKDIR /app
COPY . .
EXPOSE 8080
CMD [\"node\", \"server.js\"]" > Dockerfile

echo "const http = require('http');

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World');
});

server.listen(8080, () => {
  console.log('Server running at http://localhost:8080/');
});" > server.js

docker build -t node-hello-world .
docker run -p 8080:8080 node-hello-world
