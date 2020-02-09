#!/usr/bin/fish

set DOTPATH $HOME/dotfiles

fish $DOTPATH/install-and-exec-fisher.fish
source $HOME/.config/fish/config.fish
fisher

# install node 
nvm use lts