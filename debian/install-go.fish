#!/usr/bin/fish

sudo apt-get update
sudo apt-get -y upgrade
wget https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz
tar -xvf go1.13.5.linux-amd64.tar.gz -C /usr/local
echo 'set -x GOROOT /usr/local/go' >> ~/.config/fish/config.fish
echo 'set -x GOPATH $HOME/go' >> ~/.config/fish/config.fish
echo 'set -x PATH $GOPATH/bin $GOROOT/bin $PATH' >> ~/.config/fish/config.fish