#!bin/bash
apt install cockpit 
systemctl start cockpit
systemctl enable cockpit.socket  
