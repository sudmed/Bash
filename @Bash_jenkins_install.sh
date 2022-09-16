#!/bin/bash
# Script for Jenkins install

echo 'Enter root password:'
read root_password && \
echo $root_password | sudo -i && \
echo 'Update REPO:' && \
apt-get -y update && \
echo 'Add repository key:' && \
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add - && \
echo 'Add repo in sources.list.' && \
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' && \
echo 'Update REPO:' && \
apt-get -y update && \
echo 'Install Jenkins:' && \
apt-get -y install jenkins && \
echo 'Installed' && \
echo 'Starting Jenkins:' && \
systemctl start jenkins && \
echo 'Started' && \
echo 'Jenkins install succesfull. Open your firewall ports.' && \
echo 'You can configuration Jenkins via URL http://IP:8080'
