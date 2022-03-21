#!/bin/bash
 
if [ $# -ne 1 ]; then
  echo "You must pass just one argument to $0 as DOTPATH" 1>&2
  exit 1
fi
DOTPATH=$1

bash $DOTPATH/debian/deploy-apt-sources.sh $DOTPATH
bash $DOTPATH/debian/install-apt-tools.sh
bash $DOTPATH/debian/install-snap-tools.sh
bash $DOTPATH/deploy.sh $DOTPATH
source $HOME/.bashrc

# setup golang
if !(type "go" > /dev/null 2>&1); then
  mkdir -p $HOME/go
  bash $DOTPATH/debian/install-go.sh
else
  echo "go installation is skipped. (already installed)"
fi
bash $DOTPATH/install-go-tools.sh

# setup fish
mkdir -p $HOME/.config/fish
fish $DOTPATH/install.fish $DOTPATH
