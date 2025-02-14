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
    network-manager \
    neofetch \
    echo neofetch >> ~/.bashrc && cat ~/.bashrc
# Check the status of installation
if [ $? -eq 0 ]; then
    echo "All packages installed successfully."
fi
neofetch
# Function to get local IP
echo "find your ip"
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
get_local_ip
get_wan_ip
fi
