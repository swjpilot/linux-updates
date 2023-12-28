#!/bin/bash
pushd /tmp

wget --content-disposition --user-agent="Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/111.0" "https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip"
mkdir aws-sam-cli
pushd aws-sam-cli
sudo unzip /tmp/aws-sam-cli-linux-x86_64.zip
sudo ./install
popd
sudo rm -rf /tmp/aws-sam-cli
sudo rm -rf /tmp/aws-sam-cli-linux-x86_64.zip
sudo ln -s /usr/local/bin/sam /usr/bin/sam
sam --version
popd