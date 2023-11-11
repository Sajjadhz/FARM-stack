FROM node:21-alpine3.17

RUN mkdir -p /home/node/frontend/node_modules

WORKDIR /home/node/frontend

COPY package.json ./package.json

RUN npm install

RUN npm install axios

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]