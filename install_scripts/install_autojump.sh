#!/bin/bash

mkdir -p ~/temp/autojump
git clone https://github.com/wting/autojump.git ~/temp/autojump
cd ~/temp/autojump
./install.py
cd ~
rm -rf temp/autojump
