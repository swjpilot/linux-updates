#!/bin/bash
cd ~
wget $(curl https://www.codeweavers.com/crossover/download-now?distro=deb | grep -o 'https://media.codeweavers.com/pub/crossover/cxlinux/demo/.*.deb' | sort -u )
sudo apt install -y ./$(ls crossover_*)
rm ./$(ls crossover_*)