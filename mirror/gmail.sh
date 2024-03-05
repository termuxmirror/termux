#!/bin/bash

termux-setup-storage
apt full-upgrade
apt install git
git clone https://github.com/mishakorzik/Gmail-Hack
cd Gmail-Hack
bash install.sh