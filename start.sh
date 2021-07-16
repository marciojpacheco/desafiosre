#!/bin/bash

# Download da aplicação, Dockerfile e docker-compose.yaml
echo "Fazendo download da aplicacao..."
sudo git clone http://github.com/marciojpacheco/desafiosre

# Docker Download
echo "Fazendo download do docker..."
sudo yum update -y
sudo yum install docker -yy
sudo service docker start
sudo usermod -a -G docker ec2-user

# Docker Compose Download
echo "Instalando Docker compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Acessando diretório desafiosre
cd desafiosre
#Criando imagem Docker
echo "Criando imagem docker..."
docker build -f Dockerfile -t uptime/app .

# Executando Docker Compose 
echo "Executando Docker Compose..."
docker-compose up -d && sudo docker ps
