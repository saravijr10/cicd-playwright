FROM mcr.microsoft.com/playwright:v1.43.0-jammy

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# 🔥 Fix permission issue
USER root

CMD ["npx", "playwright", "test"]