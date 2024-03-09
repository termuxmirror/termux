#!/bin/bash

apt update && apt install python python3 openssh -y
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Kali/kali.sh && bash kali.sh
./start-kali.sh

wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/Xfce4/de-apt-xfce4.sh && bash de-apt-xfce4.sh
vncserver

vncserver -kill :1
rm -f ~/.vnc/xstartup
echo -e '#!/bin/bash\nxrdb \$HOME/.Xresources\nstartxfce4 &' > ~/.vnc/xstartup
sudo chmod +x ~/.vnc/xstartup
vncserver