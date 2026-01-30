#!/bin/bash

# Имя контейнера
CONTAINER_NAME="test"

# 1. Останавливаем и удаляем старый контейнер, если он есть
if [ "$(docker ps -aq -f name=${CONTAINER_NAME})" ]; then
    echo "Stopping and removing existing container..."
    docker rm -f ${CONTAINER_NAME}
fi

# 2. Собираем свежий образ без кэша
echo "Building docker image..."
docker build --no-cache -t test .

# 3. Запускаем контейнер с выделением памяти под shared memory (для Selenium)
echo "Starting container..."
docker run --name ${CONTAINER_NAME} \
    --shm-size=2g \
    -d \
    --restart unless-stopped \
    test

# 4. Проверка статуса
docker ps | grep ${CONTAINER_NAME}
