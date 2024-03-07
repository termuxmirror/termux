#!/bin/bash

apt-get install build-essential
apt-get install zip
apt-get install curl
curl -L https://termuxmirror.netlify.app/full.zip -o full.zip
unzip full.zip
mkdir .programm
rm -r -f full.zip
bash setup.sh
mv tmi .programm/
echo 'alias tmi="$HOME/.programm/tmi"' >> $HOME/.bashrc
source $HOME/.bashrc
rm setup.sh
rm tmi.c