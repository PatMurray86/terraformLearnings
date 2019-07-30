# !/bin/bash

echo "Running initial installs...."
sudo apt update
sudo apt dist-upgrade
sudo do-release-upgrade -d
sudo do-release-upgrade


echo "Configuring gitlab-ctl...."
sudo gitlab-ctl reconfigure
sudo apt-get update
sudo apt-get upgrade

echo "Making sure gitlab-ctl is running"
sudo gitlab-ctl restart

echo "Installing gitlab-ce"
sudo apt-get update && sudo apt-get install gitlab-ce
curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
sudo apt-get install gitlab-ce=12.0.3-ce.0