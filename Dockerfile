FROM mcr.microsoft.com/playwright:v1.43.0-jammy

WORKDIR /app

COPY package*.json ./

RUN npm ci && \
    npm install -g @playwright/test && \
    chmod +x /app/node_modules/.bin/* 2>/dev/null || true

COPY . .

RUN npx playwright install

CMD ["npx", "playwright", "test", "--config=playwright.config.js"]