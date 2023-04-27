FROM node:latest

ENV NODE_ENV=production

WORKDIR /usr/src/index

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

RUN chown -R node /usr/src/index

USER node

CMD [ "npm", "run", "start" ]