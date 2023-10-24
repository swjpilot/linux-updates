#!/bin/bash
pushd /tmp

curl --user-agent "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/111.0" -H "Content-Type: application/x-www-form-urlencoded" -d "key=VPUV-33PW-TQ27-HYXQ-5798&mail=&number=&platform=linux&download_program=Start download of FileZilla Pro&platform_cli=win&platform_fzpes=win" -X POST https://filezilla-project.org/prodownload.php?beta=0 -o /tmp/filezillaPro.tar.xz
pushd /opt
sudo tar xvxf /tmp/filezillaPro.tar.xz
sudo chown -R johns:johns /opt/FileZilla3
sudo rm /tmp/filezillaPro.tar.xz
popd
popd