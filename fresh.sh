#!/bin/bash

# Update package list and upgrade installed packages
sudo apt-get update -y && sudo apt-get upgrade -y

# Install the required packages
sudo apt-get install -y \
    openssh-server \
    curl \
    net-tools \
    neofetch \
    nmap \
    git \
    wget \
    network-manager

# Add neofetch to .bashrc if not already present
if ! grep -q "neofetch" ~/.bashrc; then
    echo "neofetch" >> ~/.bashrc
fi

# Check the status of the installation
if [ $? -eq 0 ]; then
    echo "All packages installed successfully."
    neofetch
else
    echo "There was an error installing the packages."
fi

# Function to get local IP
get_local_ip() {
    local_ip=$(hostname -I | awk '{print $1}')
    echo "Local IP: $local_ip"
}

# Function to get WAN IP
get_wan_ip() {
    wan_ip=$(curl -s ifconfig.me)
    echo "WAN IP: $wan_ip"
}

# Display the IPs
echo "Finding your IP addresses..."
get_local_ip
get_wan_ip
