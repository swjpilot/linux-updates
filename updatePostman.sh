#!/bin/bash

pushd /tmp
wget --content-disposition --user-agent="Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/111.0" https://dl.pstmn.io/download/latest/linux_64
#wget --content-disposition --user-agent="PostmanRuntime/7.34.0" https://dl-agent.pstmn.io/download/latest/linux
pushd /opt
sudo tar xvzf /tmp/postman-linux-x64.tar.gz
#sudo tar xvzf /tmp/$(ls /tmp/postman-agent*linux-x64.tar.gz)
sudo chown -R johns:johns /opt/Postman
#chown -R johns:johns /opt/PostmanAgent
popd
popd
rm /tmp/postman-linux-x64.tar.gz
#rm /tmp/$(ls /tmp/postman-agent*linux-x64.tar.gz)
