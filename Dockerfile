FROM node:20.12

WORKDIR /app

COPY app/package*.json ./

RUN apt update && apt-get install -y apt-transport-https ca-certificates sqlite3 build-essential

RUN npm install

COPY app .

EXPOSE 8080

