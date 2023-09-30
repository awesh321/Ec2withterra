#!/bin/bash
# Update package repositories and install dependencies
sudo apt-get update -y
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER  # Add the current user to the docker group to run Docker without sudo
sudo systemctl enable docker  # Enable Docker to start on boot

# Install Ansible
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get install -y ansible

# Output a message indicating the setup is complete
echo "Setup complete: Docker, Ansible, and GitLab have been installed."
