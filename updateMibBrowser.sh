#!/bin/bash
pushd /tmp

wget -O mibbrowser.zip https://www.ireasoning.com/download/mibpro/mibbrowser_linux_x64.zip
pushd /opt
sudo unzip -o /tmp/mibbrowser.zip
sudo chown -R johns:johns /opt/ireasoning
sudo chmod +x /opt/ireasoning/mibbrowser/*.sh
sudo rm /tmp/mibbrowser.zip
popd
popd