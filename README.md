# xshot
Simple screenshot utility for X window system which allows you to post your screenshot to Lightshot server.

Currently tested with ubuntu 16.04

Needs only few dependencies:
jq and curl.

Installation:

sudo apt-get update \
 && sudo apt-get --yes install jq \
 && sudo --yes apt-get install curl \
 && curl https://raw.githubusercontent.com/dargiri/xshot/master/xshot > xshot \
 && chmod +x xshot \
 && sudo mv xshot /usr/local/bin/
 
Then add custom shortcut for it:

http://prntscr.com/e5nnaw


And add custom key bindings for it:

http://prntscr.com/e5nnu2
