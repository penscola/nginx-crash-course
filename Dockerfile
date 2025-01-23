FROM node:20
LABEL authors="penscola"

WORKDIR /app

COPY server.js .
COPY index.html .
COPY images ./images
COPY package.json .

RUN npm install

EXPOSE 3000

CMD ["node", "server.js"]
