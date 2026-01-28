# DevOps Final Task: Monitoring & Testing Infrastructure

Этот проект представляет собой автоматизированную среду для развертывания стека мониторинга (Prometheus, Grafana), 
CI/CD (GitLab Runner) и инфраструктуры для запуска Selenium тестов на базе Ubuntu 24.04 LTS.

Основные компоненты

   Инфраструктура: 	Vagrant (VirtualBox), Minikube (Kubernetes).
   Мониторинг: 		Prometheus, Node Exporter, cAdvisor, Alertmanager, Grafana.
   Тестирование: 	Selenium Standalone Chrome, контейнеризированные тесты.
   CI/CD: 		GitLab Runner.

Предварительные требования

Перед запуском убедитесь, что у вас установлены:
	Vagrant
	VirtualBox

##	Развертывание

1. Клонируйте репозиторий:

   git clone https://gitlab.com
   cd codeby_devops_final_task

2. Запустите виртуальную машину:

   vagrant up

3. Запуск Minikube (внутри ВМ):

   vagrant ssh
   minikube start --driver=docker

4. Доступ к сервисам

После завершения работы vagrant up сервисы будут доступны по IP 192.168.137.10

Сервис			URL				Порт
Prometheus		http://192.168.137.10:9090	9090
Grafana			http://192.168.137.10:3000	3000
Selenium UI (VNC)	http://192.168.137.10:7900	7900
Selenium Grid		http://192.168.137.10:4444	4444
cAdvisor		http://192.168.137.10:8080	8080

