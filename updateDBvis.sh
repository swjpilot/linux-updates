#!/bin/bash
cd ~
wget $(curl https://www.dbvis.com/download/ | grep -o 'https://dbvis.com/product_download/dbvis-.*/media/dbvis_linux.*.deb' | sort -u ) 
sudo apt install -y ./$(ls dbvis_linux_* )
rm ./$(ls dbvis_linux_* )