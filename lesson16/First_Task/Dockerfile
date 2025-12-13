# Базовый образ - легковесный Alpine Linux
FROM alpine:latest

# Обновляем пакеты и устанавливаем NGINX
RUN apk update && apk add nginx

# Создаем папку для веб-контента
RUN mkdir -p /opt/www

# Создаем простой index.html
RUN echo "<h1>Hello from NGINX on Alpine!</h1>" > /opt/www/index.html

# Копируем кастомный конфиг NGINX (создадим его ниже)
# Важно: по умолчанию NGINX в Alpine использует /etc/nginx/nginx.conf, но для простоты работы с /opt/www, мы его заменим
COPY nginx.conf /etc/nginx/nginx.conf

# Открываем порт 80 для NGINX
EXPOSE 80

# Команда для запуска NGINX в режиме демона и указание корневой директории
CMD ["nginx", "-g", "daemon off;"]
