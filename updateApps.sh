#!/bin/bash
sudo echo "Asking for sudo rights"
pushd ~/Nextcloud/Development/git/linux-updates/

for i in $(find *.sh ! -name updateApps.sh)
do
        echo "$i will start *****************************************************************************************"
        ./$i
done
popd

