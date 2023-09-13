#!/bin/bash
# Set-up for Individual VMs of a Kubernetes Cluster 

# Update package list
sudo apt update

# Install necessary packages
sudo apt install -y nano net-tools openssh-server

# Enable and allow SSH
sudo systemctl enable ssh
sudo ufw allow ssh
sudo systemctl start ssh

# Install Docker
sudo apt install docker.io -y

# Install additional packages for Kubernetes
sudo apt install apt-transport-https curl -y
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"

# Update package list again
sudo apt update

# Install Kubernetes components
sudo apt install kubeadm kubelet kubectl kubernetes-cni -y

echo "Setup complete!"
