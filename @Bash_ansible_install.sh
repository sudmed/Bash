#!/bin/bash
# Script for ansible install

echo 'Enter root password:'
read root_password && \
echo $root_password | sudo -i && \
echo 'Root access granted!' && \
echo 'Update REPO:' && \
apt-get -y update && \
echo 'Install Ansible:' && \
apt-get -y install ansible && \
echo 'Check hosts file:' && \
ansible-inventory --list -y && \
echo 'First install Ansible complete. Config hosts file and ssh rsa certificate!'
