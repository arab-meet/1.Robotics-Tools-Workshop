#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Install Terminator
echo "Installing Terminator..."
sudo apt-get install -y terminator

# Install VSCode
echo "Installing VSCode..."
sudo snap install -y --classic code

sudo apt-get update
sudo apt-get install -y code

echo "Installation completed!"