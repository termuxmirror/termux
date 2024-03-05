#!/bin/bash

apt-get update -y
apt-get upgrade -y
git clone https://github.com/h4ck3r0/Apktool-termux
cd $HOME
ls
cd Apktool-termux
chmod +x *
bash setup.sh
bash apktool.sh