# 1. Базовый образ Debian 11
FROM debian:11-slim

# Установка зависимостей
RUN apt-get update && apt-get install -y \
    nginx \
    && rm -rf /var/lib/apt/lists/*

# 2. Создание папки /opt/www
RUN mkdir -p /opt/www

# Копирование index.html и конфига
COPY index.html /opt/www/index.html
COPY nginx.conf /etc/nginx/nginx.conf

# 3. Открытие порта 80
EXPOSE 80

# 4. Запуск nginx через ENTRYPOINT или CMD
# ENTRYPOINT ["nginx", "-g", "daemon off;"] # -g "daemon off;" для работы в фоновом режиме в Docker
CMD ["nginx", "-g", "daemon off;"]
