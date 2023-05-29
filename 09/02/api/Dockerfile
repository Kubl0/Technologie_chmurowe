FROM arm64v8/node:14-slim

RUN apt-get update && apt-get install -y curl

COPY . /app

WORKDIR /app

RUN npm install

CMD ["node", "server.js"]