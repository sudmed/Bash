#!/bin/bash
# Script for Docker & Docker-compose install

echo 'Enter root password:'
read root_password && \
echo $root_password | sudo -i && \
echo 'Update REPO:' && \
apt-get -y update && \
echo 'Install support components:' && \
apt-get -y install apt-transport-https ca-certificates curl gnupg lsb-release && \
echo 'Download GPG key:' && \
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && \
echo 'Install Docker and compose:' && \
apt-get install docker-ce docker-ce-cli containerd.io && \
echo 'Docker version is:' && \
docker --version && \
docker-compose --version && \
echo 'Check Docker container run:' && \
docker run hello-world && \
echo 'Docker was successfully installed'
