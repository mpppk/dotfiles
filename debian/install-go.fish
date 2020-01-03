#!/usr/bin/fish

set GOTAR go1.13.5.linux-amd64.tar.gz

wget https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz
sudo tar -xvf $GOTAR -C /usr/local
rm $GOTAR
echo 'set -x GOROOT /usr/local/go' >> $HOME/.config/fish/config.fish
echo 'set -x GOPATH $HOME/go' >> $HOME/.config/fish/config.fish
echo 'set -x PATH $GOPATH/bin $GOROOT/bin $PATH' >> $HOME/.config/fish/config.fish
