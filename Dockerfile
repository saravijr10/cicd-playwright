FROM mcr.microsoft.com/playwright:v1.58.2-jammy

WORKDIR /app

COPY package*.json ./

RUN npm ci && \
    npx playwright install-deps && \
    chmod +x /app/node_modules/.bin/* 2>/dev/null || true

COPY . .

CMD ["sh", "-c", "npx playwright test --config=playwright.config.js"]