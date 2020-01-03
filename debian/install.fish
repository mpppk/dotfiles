#!/usr/bin/fish

set DOTPATH $HOME/workspace

fish $DOTPATH/install-and-exec-fisher.fish
fish $DOTPATH/debian/install-apt-tools.sh
bash $DOTPATH/deploy.sh
fish $DOTPATH/debian/install-go.fish
source ~/.config/fish/config.fish
fish $DOTPATH/install-go-tools.sh
