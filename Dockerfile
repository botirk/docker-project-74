FROM node:20.12

WORKDIR /app

COPY app/package*.json ./

RUN apt update --no-install-recommends && apt-get install -y apt-transport-https=2.6.1 build-essential=12.9 --no-install-recommends

RUN npm install

COPY app .

EXPOSE 8080

