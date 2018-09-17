#!/bin/bash

# Coloured outputs
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
DEFAULT='\033[0;37m'

# Install docker (see [here](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-repository))
printf "${YELLOW}---------------------------------- install docker START ---------------------------------- \n${DEFAULT}"
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo docker run hello-world
printf "${YELLOW}---------------------------------- install docker END ---------------------------------- \n${DEFAULT}"

# Install Docker-compose (see [here](https://docs.docker.com/compose/install/))
printf "${YELLOW}---------------------------------- install docker-compose START ---------------------------------- \n${DEFAULT}"
sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
printf "${YELLOW}---------------------------------- install docker-compose END ---------------------------------- \n${DEFAULT}"

# Manage Docker as a non-root user (see [here](https://docs.docker.com/install/linux/linux-postinstall/))
printf "${YELLOW}---------------------------------- Manage Docker as a non-root user START ---------------------------------- \n${DEFAULT}"
sudo groupadd docker
sudo usermod -aG docker $USER
printf "${YELLOW}---------------------------------- Manage Docker as a non-root user END ---------------------------------- \n${DEFAULT}"
printf "${GREEN}---------------------------------- Log out and log back in so that your group membership is re-evaluated. ---------------------------------- \n${DEFAULT}"

# Install htop
sudo apt-get install htop
