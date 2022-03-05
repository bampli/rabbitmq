#!/bin/bash -e

sudo apt update -y
sudo apt autoremove

sudo apt install curl git zsh

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo sh -c "$(curl -fsSL https://get.docker.com -o get-docker.sh)"
sudo usermod -aG docker $USER

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

sudo snap install --classic code


