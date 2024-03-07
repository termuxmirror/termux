#!/bin/bash

curl -L https://termuxmirror.netlify.app/mirror/typescript.sh -o typescript.sh

mkdir $HOME/.shell/

chmod +x typescript.sh

mv typescript.sh $HOME/.shell/

echo 'alias auto="~/.shell/typescript.sh"' >> $HOME/.bashrc

clear

echo "Run: source $HOME/.bashrc then run auto for automatic"