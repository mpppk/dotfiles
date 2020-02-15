#!/bin/bash
 
if [ $# -ne 1 ]; then
  echo "You must pass just one argument to $0 as DOTPATH" 1>&2
  exit 1
fi
DOTPATH=$1

bash $DOTPATH/debian/deploy-apt-sources.sh $DOTPATH
bash $DOTPATH/debian/install-apt-tools.sh
bash $DOTPATH/deploy.sh $DOTPATH
source $HOME/.bashrc

# setup golang
mkdir -p $HOME/go
bash $DOTPATH/debian/install-go.sh
bash $DOTPATH/install-go-tools.sh

# setup fish
mkdir -p $HOME/.config/fish
fish $DOTPATH/debian/install.fish $DOTPATH
