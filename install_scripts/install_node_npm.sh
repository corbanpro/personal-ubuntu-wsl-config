#!/bin/bash

curl -fsSL https://fnm.vercel.app/install | bash
source ~/.bashrc
fnm use --install-if-missing 22

npm install -g typescript typescript-language-server emmet-ls neovim jsdoc live-server tsx jest aws-cdk nodemon
