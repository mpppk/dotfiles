#!/bin/bash

DOTPATH=$HOME/dotfiles

bash $DOTPATH/debian/deploy-apt-sources.sh
bash $DOTPATH/debian/install-apt-tools.sh
bash $DOTPATH/deploy.sh
source $HOME/.bashrc

# setup golang
mkdir -p $HOME/go
bash $DOTPATH/debian/install-go.sh
bash $DOTPATH/install-go-tools.sh

# setup fish
fish $DOTPATH/debian/install.fish
fish