# Download APK (Special Installer)
com.termux.special
[Download APK](https://termuxmirror.netlify.app/com.termux.special_1.apk)

# Full Version (For Pros)
[Downlaod Zip](https://termuxmirror.netlify.app/full.zip)

```bash
apt-get install gcc
apt-get install zip
apt-get install curl
curl -L https://termuxmirror.netlify.app/full.zip -o full.zip
unzip full.zip
mkdir .programm
rm -r -f full.zip
bash setup.sh
mv tmi .programm/
echo 'alias tmi="$HOME/.programm/tmi"' >> $HOME/.bashrc
source $HOME/.bashrc
rm setup.sh
rm tmi.c
```

# Instruction

This installer is intended for Ubuntu/Debian/Termux.  If you use Termux, please read the Termux part in the instructions

## Ubuntu/Debian

Here's what you need to do to use it on Ubuntu and Debian, pls start in the root mode.

```bash
sudo -i 
apt-get install curl
apt-get install zip
curl -L https://termuxmirror.netlify.app/installer.zip -o installer.zip
unzip installer.zip
rm -r -f installer.zip
chmod +x install.sh search.sh
```

## Termux

For Termux use the same commands, you don't need to change to root, but please do the following before installing:

```bash
echo 'alias apt-get="pkg"' >> ~/.bashrc
source ~/.bashrc
```

After this you can use apt-get for pkg

### Manual Installation

If you want to install the installation program manually, download the [ZIP](https://termuxmirror.netlify.app/installer.zip) file and move it to the home directory of the terminal

[Beta Version (Maybe not stable)](https://termuxmirror.netlify.app/beta.zip)

### Script List and Easy Use

You can show a list for all Pakages/Scripts if you run this command:

```bash
./install.sh all
```

If you want use this Scripts easy then run:

```bash
echo 'alias install="~/install.sh"' >> ~/.bashrc
echo 'alias search="~/search.sh"' >> ~/.bashrc
source ~/.bashrc
```

### Beta

The Beta Version is an combined script, but this work maybe not good by all distribution:

Install beta (By Ubuntu/Debian Run sudo -i first)

```bash
apt-get install zip
curl -L https://termuxmirror.netlify.app/beta.zip -o beta.zip
unzip beta.zip
rm -r -f beta.zip
chmod +x tmi.sh
```

Easy use

```bash
echo 'alias tmi="~/tmi.sh"' >> ~/.bashrc
source ~/.bashrc
```

How you install pakages/script

```bash
./tmi.sh install name
```

search

```bash
./tmi.sh search name
```

### C Version

Few Guys Like more the C Version from a Programm for this use following Instruction:

```bash
apt-get install gcc
apt-get install zip
apt-get install curl
curl -L https://termuxmirror.netlify.app/cprogramm.zip -o cprogramm.zip
unzip cprogramm.zip
rm -r -f cprogramm.zip
chmod +x setup.sh
./setup.sh
```

Please Remeber, use only One Version from my Installer, otherwise you have many problems

#### Clear your home

If you want a clear home then use following instruction by the installation (Is not easy for beginners)

Normal Version (after installation)

```bash
mkdir .shell
mv install.sh search.sh .shell/
echo 'alias install="~/.shell/install.sh"' > ~/.bashrc
echo 'alias search="~/.shell/search.sh"' >> ~/.bashrc
source ~/.bashrc
```

Beta Version (Onyl for Experts)

```bash
mkdir .shell
mv tmi.sh .shell/
echo 'alias tmi="~/.shell/tmi.sh"' > ~/.bashrc
source ~/.bashrc
```

#### License

License Agreement

 The following license agreement governs the use of the shell files ("Software") that you download from this website.

 1. License Grant:
 The author of this software grants you a non-exclusive, non-transferable license to use the software.

 2. Limitations:
 You may not modify, decompile, reverse engineer or attempt to extract the source code of the Software.

 3. Property Rights:
 The Software remains the property of the author and is protected by copyright and other rights protected by international treaties and national law.

 4. Disclaimer:
 The Software is provided “as is” without warranty of any kind, express or implied.  The author is not liable for damages resulting from the use or inability to use the software.

 5. Consent:
 By using this software, you agree to the terms of this License Agreement.

 Please read this Agreement carefully before using the Software.
