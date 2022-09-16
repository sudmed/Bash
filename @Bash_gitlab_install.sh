#!/bin/bash
# Script for Gitlab EE install

echo 'Enter root password:'
read root_password && \
echo $root_password | sudo -i && \
echo 'Update REPO:' && \
apt-get -y update && \
echo 'install components: openssh,ca,perl,tzdata, postfix' && \
apt-get install -y curl openssh-server ca-certificates tzdata perl postfix && \
echo 'Install completed. Copy GitLab REPO:'
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | bash && \
echo 'Done. Install GitLab:' && \
EXTERNAL_URL="https://gitlab.example.com" apt-get install gitlab-ee && \
echo 'GitLab installed. Please will do first configuration via web interface.'
