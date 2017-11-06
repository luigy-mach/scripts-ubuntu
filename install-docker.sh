#!/bin/bash

sudo apt-get install -y curl
wait
echo "--------------------------------------"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
wait
echo "--------------------------------------"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
wait
echo "--------------------------------------"

sudo apt-get update
wait
echo "--------------------------------------"

apt-cache policy docker-ce
wait
echo "--------------------------------------"

sudo apt-get install -y docker-ce
wait
echo "--------------------------------------"

sudo systemctl status docker
