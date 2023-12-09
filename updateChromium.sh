#!/bin/bash
pushd /tmp
wget --content-disposition --user-agent="Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/111.0" https://download-chromium.appspot.com/dl/Linux_x64?type=snapshots
sudo unzip -o /tmp/chrome-linux.zip -d /opt
sudo chown -R johns:johns /opt/chrome-linux
sudo chmod +x /opt/chrome-linux/chrome
sudo chmod +x /opt/chrome-linux/chrome-wrapper
sudo chmod +x /opt/chrome-linux/chrome_sandbox
sudo chmod +x /opt/chrome-linux/chrome_crashpad_handler
popd
rm /tmp/chrome-linux.zip
