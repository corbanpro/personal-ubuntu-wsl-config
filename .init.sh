#!/bin/bash
cp -r ~/personal-ubuntu-config/.bashrc ~/.bashrc
cp -r ~/personal-ubuntu-config/.dir_colors ~/dir_colors
source ~/.bashrc
sudo update
sudo upgrade
sudo apt install unzip ripgrep luarocks nodejs gh fd-find #build-essential python3-neovim tree-sitter-cli
npm install -g typescript typescript-language-server emmet-ls
bash ~/bash/addnvim.sh
gh auth login
