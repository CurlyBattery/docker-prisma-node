FROM node:22-alpine

RUN apk add --no-cache openssl

WORKDIR /app

COPY package*.json ./

COPY prisma ./prisma

RUN npm install

RUN npm install -g nodemon

COPY . .

RUN chmod +x ./wait-for.sh

EXPOSE 3005