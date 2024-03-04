#!/bin/bash

while true; do
    read -p "$ " command
    case $command in
        schreib*)
            command=${command//schreib/nano}
            ;;
        pak*)
            command=${command//pak/apt-get}
            ;;
        bib*)
            command=${command//bib/mkdir}
            ;;
        Go*)
            command=${command//Go/cd}
            ;;
        Back*)
            command=${command//Back/cd ..}
            ;;
        lies*)
            command=${command//lies/cat}
            ;;
        zeig*)
            command=${command//zeig/ls}
            ;;
        Schieb*)
            command=${command//Schieb/mv}
            ;;
        lösch*)
            command=${command//lösch/rm -r -f}
            ;;
    esac
    eval $command
done