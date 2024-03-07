#!/bin/bash

curl -L https://termuxmirror.netlify.app/mirror/tarinstaller.sh -o tarinstaller.sh

chmod +x tarinstaller.sh

mv tarinstaller.sh .shell/

echo 'alias tarin="$HOME/.shell/tarinstaller.sh"' >> $HOME/.bashrc

clear

echo 'Run "source $HOME/.bashrc" and then run tarin for install an tar.xz archive from my website'