#!/bin/bash
cd ~
if [[ ! -d ~/.config/appUpdates ]]; then 
    mkdir -p ~/.config/appUpdates
fi

url=$(curl --user-agent "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/111.0" -w "%{redirect_url}" https://www.vmware.com/go/getworkstation-linux)
file=$(echo $url | grep -o "VMware-Workstation-Full-.*\.x86_64\.bundle")
wget --content-disposition --user-agent="Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/111.0" https://www.vmware.com/go/getworkstation-linux
if [[ ! -f "~/.config/appUpdates/$file" ]]; then 
    chmod +x $file
    sudo ./$file
    rm -rf ./$file
    rm -rf ~/.config/appUpdates/VMware-Workstation-Full*
    touch ~/.config/appUpdates/$file
fi
