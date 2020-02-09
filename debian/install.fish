#!/usr/bin/fish

set DOTPATH $HOME/dotfiles

fish $DOTPATH/install-and-exec-fisher.fish
fish $DOTPATH/debian/install-apt-tools.sh
bash $DOTPATH/deploy.sh
mkdir -p $HOME/go
fish $DOTPATH/debian/install-go.fish
source $HOME/.config/fish/config.fish
fish $DOTPATH/install-go-tools.sh
fisher
nvm use lts
