# Этап 1: Сборка (builder)
FROM node:20-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build # Если есть этап сборки (например, для React/Vue)

# Этап 2: Запуск (runner)
FROM node:20-alpine
WORKDIR /app
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./package.json
COPY --from=builder /app/dist ./dist # Копируем собранные файлы
COPY --from=builder /app/server.js ./ # Или ваш основной файл
EXPOSE 3000
CMD ["node", "server.js"] # Или ["npm", "start"]
