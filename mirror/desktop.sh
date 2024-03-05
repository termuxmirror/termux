#!/bin/bash

pkg upgrade && pkg install git

pkg install x11-repo

pkg inatall tigervnc

git clone --depth=1 https://github.com/adi1090x/termux-desktop.git

cd termux-desktop
chmod +x setup.sh
./setup.sh --install

vncserver -localhost

echo 'export DISPLAY=":1"' >> ~/.bash_profile

clear

echo 'Run: source ~/.bash_profile'