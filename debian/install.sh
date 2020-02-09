#!/bin/bash

DOTPATH=$HOME/dotfiles

bash $DOTPATH/debian/deploy-apt-sources.sh
bash $DOTPATH/debian/install-apt-tools.sh
bash $DOTPATH/deploy.sh

# setup golang
mkdir -p $HOME/go
bash $DOTPATH/debian/install-go.bash
bash $DOTPATH/install-go-tools.sh