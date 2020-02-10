#!/usr/bin/fish

set DOTPATH $HOME/dotfiles

mkdir -p $HOME/.config/fish/functions
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
source $HOME/.config/fish/config.fish
fisher

# install node 
nvm use lts