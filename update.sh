#! /bin/bash
sudo apt-get -y update
sudo apt-get -y install nginx
sudo apt-get -y install python3-venv
sudo apt install python3-pip -y
# shellcheck disable=SC2164
cd /etc/nginx/sites-available
sudo cp /home/azureuser/web/reverse-proxy.conf /etc/nginx/sites-available/
sudo unlink /etc/nginx/sites-enabled/default
sudo ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf
# shellcheck disable=SC2164
#cd /home/azureuser/web
#sudo python3 -m venv venv
# pip install --upgrade pip pip install -r requirements.txt