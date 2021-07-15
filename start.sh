# Criado diretório app
mkdir /opt/app
cd /opt/app

# Download da aplicação, Dockerfile e docker-compose.yaml

git clone http://github.com/marciojpacheco/desafiosre

# Entrando no diretório desafiosre

cd desafiosre

# Docker Download

install_docker(){

        docker=`dpkg -l | grep "docker-ce "| awk '{print $2":"$3}'`

                if [ -v $docker ]
                then
                        echo "Instalando DOCKER"
                        curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
                        apt-key fingerprint 0EBFCD88 && \
                        echo "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker-ce.list
                        apt-get update && apt-get -o Dpkg::Progress-Fancy="1" -y install docker-ce
                        docker --version


# Docker Compose Download

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Executando Docker Compose 

docker-compose up -d
