#!/bin/bash

# Stop Jenkins Service
sudo systemctl stop jenkins

# Remove Jenkins Packages
sudo apt-get remove --purge jenkins -y

# Remove Jenkins User and Group
sudo deluser jenkins
sudo delgroup jenkins

# Delete Jenkins Home Directory
sudo rm -rf /var/lib/jenkins

# Remove Jenkins Configuration Files
sudo rm -rf /etc/default/jenkins
sudo rm -rf /etc/jenkins

# Clean Up Dependencies
sudo apt-get autoremove -y

echo "Jenkins has been successfully uninstalled from your Ubuntu machine."
