#!/bin/bash

# 1. Обновление системы
sudo apt update && sudo apt upgrade -y

# 2. Установка зависимостей
sudo apt install -y curl wget apt-transport-https

# 3. Скачивание и установка бинарника Minikube
curl -LO https://storage.googleapis.com
sudo install minikube-linux-amd64 /usr/local/bin/minikube
rm minikube-linux-amd64

# 4. Установка kubectl (инструмент управления кластером)
curl -LO "https://dl.k8s.io(curl -L -s https://dl.k8s.io)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl

# 5. Добавление текущего пользователя в группу docker (чтобы запускать без sudo)
# Это сработает после перезагрузки или выполнения 'newgrp docker'
sudo usermod -aG docker $USER

echo "Minikube и Kubectl успешно установлены!"

minikube start --driver=docker
