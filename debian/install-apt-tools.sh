# yarn setup
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

# fish setup
wget -nv https://download.opensuse.org/repositories/shells:fish:release:3/Debian_9.0/Release.key -O Release.key
sudo apt-key add - < Release.key

sudo apt-get update
sudo apt-get install -y git tig tmux yarn fish
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
