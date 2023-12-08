#!/bin/bash
pushd /tmp

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo unzip /tmp/awscliv2.zip
sudo ./aws/install --bin-dir /usr/local/bin --install-dir /opt/aws-cli --update
sudo rm -rf /tmp/aws
sudo rm -rf /tmp/awscliv2.zip
popd