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

# install node and yarn
nvm use lts
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y