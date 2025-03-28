#!/bin/bash
mv ./home_dir/{.**,**} ~/

sudo apt update
sudo apt upgrade

# install node
curl -fsSL https://fnm.vercel.app/install | bash
source ~/.bashrc
fnm use --install-if-missing 22

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install apt packages
sudo apt install unzip ripgrep luarocks gh fd-find openssl libssl-dev python3.12-venv jq tmux net-tools jq #build-essential python3-neovim tree-sitter-cli
sudo mv /bin/fdfind /bin/fd

# install npm packages
npm install -g typescript typescript-language-server emmet-ls neovim jsdoc live-server tsx jest aws-cdk nodemon

# download helper scripts
git clone https://github.com/corbanpro/misc-scripts.git ~/.scripts
chmod a+x ~/.scripts/*.sh

# install nvim
~/.scripts/addnvim.sh

# install cargo packages
cargo install cargo-shuttle cargo-script cmd-wrapped

# install lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm -rf lazygit lazygit.tar.gz

# install autojump
mkdir -p ~/temp/autojump
git clone https://github.com/wting/autojump.git ~/temp/autojump
cd temp/autojump
./install.py
cd ~
rm -rf temp/autojump

# install c# 9.0
sudo add-apt-repository ppa:dotnet/backports
source /etc/os-release
wget https://packages.microsoft.com/config/$ID/$VERSION_ID/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt update
sudo apt install dotnet-sdk-9.0

# log into gh
gh auth login
