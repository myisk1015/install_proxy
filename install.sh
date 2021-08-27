#!/bin/bash

#curl
sudo apt instal curl

#git
sudo apt install git

# install docker
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# install docker compose

sudo apt-get install -y docker-compose

# install dcmtk

sudo apt-get install -y dcmtk

# net tools
sudo apt install -y net-tools

# ghost tunnel
sudo git clone https://git.airsmed.io/swiftmr/internals/ghostunnel.git

# poxy installer
sudo git clone https://git.airsmed.io/swiftmr/internals/proxy-install.git

cd proxy-install
git switch devlop # develop으로 branch설정
./build
./out/proxt-installer
./out/proxy-installer #proxy installer 실행

