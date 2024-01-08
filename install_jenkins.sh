#!/bin/bash

# Update package list and install Java (required for Jenkins)
sudo apt-get update
sudo apt-get install -y openjdk-11-jdk

# Add Jenkins repository key and source
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update package list again and install Jenkins
sudo apt-get update
sudo apt-get install -y jenkins

# Modify Jenkins configuration to use port 9090
sudo sed -i 's/HTTP_PORT=8080/HTTP_PORT=9090/g' /etc/default/jenkins

# Restart Jenkins service to apply changes
sudo systemctl restart jenkins

echo "Jenkins has been installed and configured to run on port 9090."
echo "You can access Jenkins at http://localhost:9090"
