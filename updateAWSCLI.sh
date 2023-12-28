#!/bin/bash
pushd /tmp

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"
sudo apt install -y ./session-manager-plugin.deb
sudo rm -rf ./session-manager-plugin.deb
sudo unzip /tmp/awscliv2.zip
sudo ./aws/install --bin-dir /usr/local/bin --install-dir /opt/aws-cli --update
sudo rm -rf /tmp/aws
sudo rm -rf /tmp/awscliv2.zip
popd