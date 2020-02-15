#!/usr/bin/fish

mkdir -p $HOME/.config/fish/functions
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
bash $argv[1]/deploy.sh $DOTPATH
source $HOME/.config/fish/config.fish
fisher

# install node 
nvm use lts