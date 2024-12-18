!/bin/bash

# Run this bash script inside root user of docker container to use Docker inside Docker

echo "Docker Pre-setup"
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "Downloading Docker"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
echo "Starting Docker Installation"
sudo apt install docker-ce
echo "Installation Completed"
sudo systemctl status docker
docker --version
echo "Setup Auto Sudo for Docker"
sudo usermod -aG docker ${USER}
su - ${USER}
groups
echo "Successfully Completed Docker Setup"