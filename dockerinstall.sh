#!/bin/bash
sudo apt update;
sudo apt install nginx -y;
sudo service nginx start;
sudo apt install php-fpm php-mysql php-cli php-zip -y;
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release;
sudo mkdir -p /etc/apt/keyrings;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg;
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y;