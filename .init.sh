#!/bin/bash
sudo update
sudo upgrade
curl -fsSL https://fnm.vercel.app/install | bash
source ~/.bashrc
fnm use --install-if-missing 20
sudo apt install unzip ripgrep luarocks gh fd-find #build-essential python3-neovim tree-sitter-cli
sudo mv /bin/fdfind /bin/fd
npm install -g typescript typescript-language-server emmet-ls
bash ~/bash/addnvim.sh
gh auth login
