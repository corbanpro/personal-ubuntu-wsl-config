#!/bin/bash
sudo apt update
sudo apt upgrade

sudo apt install unzip ripgrep luarocks gh fd-find openssl libssl-dev python3.12-venv jq tmux net-tools #build-essential python3-neovim tree-sitter-cli

sudo mv /bin/fdfind /bin/fd
