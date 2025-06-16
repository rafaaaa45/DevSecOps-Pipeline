FROM node:16

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# instala o serve globalmente para servir o build
RUN npm install -g serve

EXPOSE 5000

CMD ["serve", "-s", "build", "-l", "5000"]
