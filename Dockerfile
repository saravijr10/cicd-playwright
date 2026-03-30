FROM mcr.microsoft.com/playwright:v1.43.0-jammy

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN chmod -R 777 /app

CMD ["npx", "playwright", "test"]