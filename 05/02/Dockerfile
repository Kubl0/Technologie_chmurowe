FROM node:latest

WORKDIR /index
COPY ./index /index

RUN npm install
ENV APP_PORT=3000
EXPOSE $APP_PORT

CMD ["npm", "start"]