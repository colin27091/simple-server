FROM node:14

RUN apt-get update

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci
COPY . .
EXPOSE 3000


CMD ["node", "server.js"]