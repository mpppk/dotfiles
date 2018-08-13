#!/usr/local/bin/fish
set DOT_FILES .config/fish/functions .config/fish/config.fish .config/fish/fishfile .gitconfig .tmux.conf .tmuxp/d.yaml

mkdir -p $HOME/.tmuxp

for file in $DOT_FILES
  ln -sf $HOME/.ghq/github.com/mpppk/dotfiles/$file $HOME/$file
end
