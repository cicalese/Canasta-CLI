#!/bin/bash

# Canasta CLI installer
# Requirements Docker Engine 18.06.0+ and DockerCompose 

echo "Downloading Canasta CLI latest release"
wget -q --show-progress https://github.com/CanastaWiki/Canasta-CLI/releases/latest/download/canasta

echo "Installing Canasta CLI"
chmod u=rwx,g=xr,o=x canasta
sudo mv canasta /usr/local/bin/canasta

loc=$(which docker)
if [ -x $loc ]
then
    echo "Docker is installed"
else
    echo "Docker is not installed, Please follow the guide at https://docs.docker.com/engine/install/ to install Docker."
fi

loc=$(which docker-compose)
if [ -x $loc ]
then
    echo "DockerCompose is installed"
else
    echo "DockerCompose is not installed, Please follow the guide at https://docs.docker.com/compose/install/compose-plugin/#installing-compose-on-linux-systems to install DockerCompose."
fi

echo "Please make sure you have a working kubectl if you wish to use Kubernetes as an orchestrator."
echo -e "\nUsage: sudo canasta [COMMAND] [ARGUMENTS...]"