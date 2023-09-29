#!/bin/bash
cd ~
curl -s https://api.github.com/repos/hluk/CopyQ/releases/latest \
| grep "browser_download_url.*deb" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -
sudo apt install -y ~/copyq*Debian_11*.deb
rm -rf copyq*.deb