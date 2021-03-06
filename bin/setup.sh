#!/bin/sh

echo "download and install cloudfoundry cli"
wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | sudo apt-key add -
echo "deb http://packages.cloudfoundry.org/debian stable main" | sudo tee /etc/apt/sources.list.d/cloudfoundry-cli.list
sudo apt-get update
sudo apt-get install cf-cli
sudo apt-get install python-pip python-dev build-essential
sudo pip install --upgrade pip
sudo pip install awscli 
