#!/bin/bash

# Instalando git

sudo yum update -yyyy
sudo yum install git -y

# Download da aplicação, Dockerfile e docker-compose.yaml
echo -en "Fazendo download da aplicacao..."
git clone http://github.com/marciojpacheco/desafiosre /home/ec2-user/desafiosre

# Docker Download
echo -en "Fazendo download do docker..."
sudo yum install docker -yy
sudo service docker start

# Docker Compose Download
echo -en "Instalando Docker compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo usermod -aG docker ec2-user
sudo systemctl start docker

# Acessando diretório desafiosre
cd /home/ec2-user/desafiosre

#Criando imagem Docker
echo -en "Criando imagem docker..."
docker build -f Dockerfile -t uptime/app .

# Executando Docker Compose 
echo "Executando Docker Compose..."
docker-compose up -d && docker ps
