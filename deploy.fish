#!/usr/bin/fish

set DOT_FILES .config/fish/functions .config/fish/config.fish .gitconfig

for file in $DOT_FILES
  ln -sf $HOME/dotfiles/$file $HOME/$file
end
