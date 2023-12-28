#!/bin/bash
cd ~
pushd /tmp
curl -s https://api.github.com/repos/gramps-project/gramps/releases/latest \
| grep "browser_download_url.*deb" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -
sudo apt install -y /tmp/gramps*all.deb
rm -rf gramps*all.deb
popd
