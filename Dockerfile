FROM node:17-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ENV PORT 5000

EXPOSE $PORT

CMD ["node", "index.js"]