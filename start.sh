#!/bin/bash

# Download da aplicação, Dockerfile e docker-compose.yaml
echo -en "Fazendo download da aplicacao..."
git clone http://github.com/marciojpacheco/desafiosre

# Docker Download
echo -en "Fazendo download do docker..."
sudo yum update
sudo yum install docker -yy
sudo service docker start

# Docker Compose Download
echo -en "Instalando Docker compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Acessando diretório desafiosre
cd desafiosre
#Criando imagem Docker
echo -en "Criando imagem docker..."
docker build -f Dockerfile -t uptime/app .

# Executando Docker Compose 
echo -en "Executando Docker Compose..."
docker-compose up -d
