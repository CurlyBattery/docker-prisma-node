FROM node:22-alpine

RUN apk add --no-cache openssl

WORKDIR /app

COPY package*.json ./

COPY prisma ./prisma

COPY wait-for.sh .
RUN chmod +x ./wait-for.sh

RUN npm install

RUN npx prisma generate