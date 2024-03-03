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

