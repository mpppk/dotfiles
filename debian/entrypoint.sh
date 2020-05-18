sudo apt-get install git -y
git clone https://github.com/mpppk/dotfiles $HOME/dotfiles
cd $HOME/dotfiles
./debian/install.sh ${DOTPATH:-$HOME/dotfiles}
