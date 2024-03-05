#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt install python python2 -y
pip install lolcat
git clone https://github.com/h4ck3r0/Metasploit-termux
cd $HOME
ls
cd Metasploit-termux
chmod +x *
bash metasploit.sh