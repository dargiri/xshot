# xshot
Simple screenshot utility for X window system which allows you to post your screenshot to Lightshot server.

Currently tested with ubuntu 16.04

Needs only few dependencies:
xclip, jq and curl.

##Installation options:##

* Manual:

```bash
sudo apt-get update \
 && sudo apt-get --yes install xclip jq curl \
 && curl https://raw.githubusercontent.com/dargiri/xshot/master/xshot > xshot \
 && chmod +x xshot \
 && sudo mv xshot /usr/local/bin/
 ```
* Using deb package:
Download latest *.deb package from here https://github.com/dargiri/xshot/tree/master/dist/debs then install it via double click or via terminal:
```bash
sudo dpkg -i xshot_0.1.deb
#install missing dependencies if you see some errors about missing deps
sudo apt-get -f install
```
 
Then add custom shortcut for it:

http://prntscr.com/e5nnaw


And add custom key bindings for it:

http://prntscr.com/e5nnu2
