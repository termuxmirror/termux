#!/bin/bash

apt-get install x11-repo

apt-get install tigervnc

apt-get install python-tkinter

echo 'export DISPLAY=":1"' >> ~/.bash_profile

clear

echo "Setup GUI Finish, run source ~/.bash_profile"