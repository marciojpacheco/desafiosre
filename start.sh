# Criado diretório app
mkdir /opt/app
cd /opt/app

# Download da aplicação, Dockerfile e docker-compose.yaml

git clone http://github.com/marciojpacheco/desafiosre

# Entrando no diretório desafiosre

cd desafiosre

# Docker Download

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Docker Compose Download

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Executando Docker Compose 

docker-compose up -d