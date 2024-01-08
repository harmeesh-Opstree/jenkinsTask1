#!/bin/bash

# Update package list
sudo apt-get update

# Install Git
sudo apt-get install -y git

# Verify Git installation
git --version

echo "Git has been successfully installed."
