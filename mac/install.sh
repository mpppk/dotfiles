#!/bin/bash

if [ $# -ne 1 ]; then
  echo "You must pass just one argument to $0 as DOTPATH" 1>&2
  exit 1
fi
DOTPATH=$1

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew bundle

$DOTPATH/install-go-tools.sh

mkdir -p $HOME/.config/fish
fish $DOTPATH/install.fish $DOTPATH
