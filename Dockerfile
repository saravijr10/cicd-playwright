FROM mcr.microsoft.com/playwright:v1.58.2-jammy

WORKDIR /app

COPY package*.json ./

RUN npm ci && npx playwright install-deps

COPY . .

CMD ["bash", "-c", "npx playwright test"]