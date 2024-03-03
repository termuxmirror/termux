#!/bin/bash

apt-get install x11-repo -y

apt-get install tigervnc -y

apt-get install python-tkinter -y

echo 'export DISPLAY=":1"' >> ~/.bash_profile

clear

echo "Setup GUI Finish, run source ~/.bash_profile"