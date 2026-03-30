FROM mcr.microsoft.com/playwright:v1.58.2-jammy

WORKDIR /app

COPY package*.json ./

RUN npm ci && \
    npx playwright install-deps

COPY . .

RUN chmod -R +x /app/node_modules/.bin/ && \
    find /app/node_modules -type f -name "*.so*" -o -name "*.node" | xargs chmod +x

CMD ["bash", "-c", "npx playwright test --config=playwright.config.js"]