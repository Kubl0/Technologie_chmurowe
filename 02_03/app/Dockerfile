FROM node:16

ENV NODE_ENV=production

RUN mkdir -p /usr/src/index
WORKDIR /usr/src/index

COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]

RUN npm install --production --silent

COPY . .

EXPOSE 8080

RUN chown -R node:node /usr/src/index

USER node

CMD ["node", "main.js"]