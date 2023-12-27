#!/bin/bash
cd ~
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo apt install -y ~/gitkraken-amd64.deb
rm gitkraken-amd64.deb
