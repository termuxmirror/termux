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
echo 'alias apt-get="pkg"' > ~/.bashrc
source ~/.bashrc
```

After this you can use apt-get for pkg

### Manual Installation

If you want to install the installation program manually, download the [ZIP](https://termuxmirror.netlify.app/installer.zip) file and move it to the home directory of the terminal

#### License