#!/bin/bash

curl -L https://termuxmirror.netlify.app/mirror/archive2.sh -o archive2.sh

mkdir $HOME/.shell/

mv archive2.sh $HOME/.shell/

echo 'alias archiv="~/.shell/archive2.sh"' >> $HOME/.bashrc

clear

echo "Run: source $HOME/.bashrc then run archiv for create tar archive"