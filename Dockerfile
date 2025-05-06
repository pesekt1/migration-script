FROM node:16-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh

CMD ["sh", "/wait-for-it.sh", "mysql:3306", "-t", "60", "--", "sh", "/wait-for-it.sh", "mongo:27017", "-t", "60", "--", "sh", "/wait-for-it.sh", "neo4j:7687", "-t", "60", "--", "npm", "start"]