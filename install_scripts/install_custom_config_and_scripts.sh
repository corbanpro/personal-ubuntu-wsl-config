#!/bin/bash
cp ./home_dir/{.**,**} ~/

mkdir ~/.scripts
git clone https://github.com/corbanpro/misc-scripts.git ~/.scripts
chmod a+x ~/.scripts/*.sh
