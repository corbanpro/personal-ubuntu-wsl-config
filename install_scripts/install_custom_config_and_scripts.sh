#!/bin/bash
cp -r ./home_dir/.** ~/ &&
	rm -rf ~/.scripts &&
	mkdir -p ~/.scripts &&
	git clone https://github.com/corbanpro/misc-scripts.git ~/.scripts &&
	chmod a+x ~/.scripts/*.sh
