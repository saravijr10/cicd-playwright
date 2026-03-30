FROM mcr.microsoft.com/playwright:v1.58.2-jammy

WORKDIR /app

COPY package*.json ./

RUN npm ci && \
    npm install --save-optional @playwright/test && \
    npx playwright install-deps

COPY . .

CMD ["npx", "playwright", "test", "--config=playwright.config.js"]