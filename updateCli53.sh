#!/bin/bash
cd ~
curl -s https://api.github.com/repos/barnybug/cli53/releases/latest \
| grep "browser_download_url.*cli53-linux-amd64" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -
sudo mv cli53-linux-amd64 /usr/local/bin/cli53
sudo chmod +x /usr/local/bin/cli53