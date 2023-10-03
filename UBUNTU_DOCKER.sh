#!/bin/bash

#COMMAND TO UPDATE UBUNTU MACHINE
sudo apt update

#STEP 1: DOWNLOADING THE CERTIFICATES TO INSTALL DOCKER IN UBUNTU

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

#STEP 2: DOWNLOADING KEYS TO INSTALL DOCKER IN UBUNTU

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#UPDATING PERMISSIONS TO IN UBUNTU MACHINE TO INSTALL DOCKER IN UBUNTU
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#STEP 3: AGAIN UPDATE UBUNTU SEREVER
sudo apt update

#STEP 4: INSTALLING DOCKER IN UBUNTU
sudo apt install docker-ce -y

#STEP 5: STARTING THE DOCKER SERVICE IN UBUNTU MACHINE
sudo systemctl start docker

#STEP 6: ENABLE THE DOCKER SERVICES IN UBUNTU MACHINE

sudo systemctl enable docker

#STEP 7 : CHECKING THE VERSION OF DOCKER IN UBUNTU

docker --version


#STEP 8: INSTALLATION COMPLETED MESSGAE

echo " ###########******************DOCKER IS SUCESSFULLY INSTALLED IN YOUR UBUNTU MACHINE *****************############ "
