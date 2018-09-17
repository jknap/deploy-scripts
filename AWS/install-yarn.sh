#!/bin/bash

# Coloured outputs
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
DEFAULT='\033[0;37m'

# Install docker (see https://yarnpkg.com/lang/en/docs/install/#debian-stable)
printf "${YELLOW}---------------------------------- install yarn START ---------------------------------- \n${DEFAULT}"

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo apt-get update && sudo apt-get install yarn

printf "${YELLOW}---------------------------------- install yarn END ---------------------------------- \n${DEFAULT}"
