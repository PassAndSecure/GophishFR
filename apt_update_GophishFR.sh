# Script de mise à jour de GophishFR

# Installation 
# cd /var/lib/GophishFR
# sudo wget https://github.com/PassAndSecure/GophishFR/blob/main/apt_update_GophishFR.sh
# sudo chmod +x apt_update_GophishFR.sh
# sudo ./apt_update_GophishFR.sh

cd /tmp 
wget https://github.com/PassAndSecure/GophishFR/releases/download/v0.12.1/gophishfr-v0.12.1-linux-64bit.zip
mkdir -p /tmp/GophishFR_unpack
sudo unzip gophishfr-v0.12.1-linux-64bit.zip -d /tmp/GophishFR_unpack
sudo mv /tmp/GophishFR_unpack /tmp/GophishFR
sudo rm -rf /var/lib/gophishfr/templates/*
sudo rm -rf /var/lib/gophishfr/static/*
sudo cp -r /tmp/GophishFR/gophishfr-v0.12.1-linux-64bit/templates/* /var/lib/gophishfr/templates
sudo cp -r /tmp/GophishFR/gophishfr-v0.12.1-linux-64bit/static/* /var/lib/gophishfr/static
sudo rm -rf gophishfr-v0.12.1-linux-64bit.zip
sudo rm -rf GophishFR
