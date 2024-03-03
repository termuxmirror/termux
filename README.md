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