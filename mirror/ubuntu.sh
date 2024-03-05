#!/bin/bash

pkg up -y
pkg install proot-distro
proot-distro install ubuntu
echo "proot-distro login ubuntu" > $PREFIX/bin/ubuntu
chmod +x $PREFIX/bin/ubuntu
ubuntu