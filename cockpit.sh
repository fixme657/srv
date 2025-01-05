#!bin/bash
apt install cockpit /y
systemctl start cockpit
systemctl enable cockpit.socket  
