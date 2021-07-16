#!/bin/bash

# Download da aplicação, Dockerfile e docker-compose.yaml
git clone http://github.com/marciojpacheco/desafiosre
# Docker Download
sudo yum update
sudo yum install docker -y
y
sudo service docker start

# Docker Compose Download
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
#Criando imagem Docker
docker build -f Dockerfile -t uptime/app .

# Executando Docker Compose 
docker-compose up -d
