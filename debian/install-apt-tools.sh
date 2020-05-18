# yarn setup

# Remove cmdtest if exist. See https://github.com/yarnpkg/yarn/issues/2821
dpkg -s cmdtest &> /dev/null
if [ $? -eq 0 ]; then
    sudo apt remove -y cmdtest
fi

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

# fish setup
wget -nv https://download.opensuse.org/repositories/shells:fish:release:3/Debian_9.0/Release.key -O Release.key
sudo apt-key add - < Release.key

sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y git tig tmux yarn fish build-essential
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
