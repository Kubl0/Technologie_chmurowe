FROM node:14
WORKDIR /index
COPY package.json .
RUN npm install
COPY . .
EXPOSE 8081
CMD ["node", "server.js"]
