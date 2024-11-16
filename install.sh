#!/bin/bash
sudo apt update
sudo apt upgrade

curl -fsSL https://fnm.vercel.app/install | bash
source ~/.bashrc

sudo apt install unzip ripgrep luarocks gh fd-find openssl libssl-dev python3.12-venv jq tmux net-tools #build-essential python3-neovim tree-sitter-cli
sudo mv /bin/fdfind /bin/fd
npm install -g typescript typescript-language-server emmet-ls neovim jsdoc live-server
bash ~/bash/addnvim.sh

fnm use --install-if-missing 20
# cargo install cargo-shuttle

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm -rf lazygit lazygit.tar.gz

mkdir -p ~/temp/autojump
git clone https://github.com/wting/autojump.git ~/temp/autojump
cd temp/autojump
./install.py
cd ~
rm -rf temp/autojump

gh auth login

mkdir documents documents/side-projects documents/side-projects documents/work documents/work/byu-dev
