#!/bin/bash

# Update package list and upgrade installed packages
sudo apt-get update -y && sudo apt-get upgrade -y

# Install the required packages
sudo apt-get install -y \
    openssh-server \
    curl \
    net-tools \
    nmap \
    git \
    wget \
    neofetch \
    echo neofetch >> ~/.bashrc && cat ~/.bashrc
# Check the status of installation
if [ $? -eq 0 ]; then
    echo "All packages installed successfully."
else
    echo "Error occurred during package installation." >&2
    exit 1
fi
