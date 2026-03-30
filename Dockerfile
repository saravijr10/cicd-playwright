FROM mcr.microsoft.com/playwright:v1.43.0-jammy

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

CMD ["bash", "-c", "npx playwright test"]