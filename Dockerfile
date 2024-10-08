FROM node:18 as build

RUN npm install -g http-server

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run dev

EXPOSE 8080
CMD [ "http-server", "dist" ]

