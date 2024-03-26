#!/bin/bash

# Update package list
sudo apt-get update

# Disable swap
sudo swapoff -a

# Install Docker
sudo apt-get install -y docker.io

# Install Kubernetes components
sudo apt-get update && sudo apt-get install -y apt-transport-https curl

# Add Kubernetes GPG key
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

# Add Kubernetes repository
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

# Install Kubernetes packages
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl

echo "Setup complete!"
