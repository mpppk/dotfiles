#!/usr/local/bin/fish
set DOT_FILES .config/fish/functions .config/fish/config.fish .config/fish/fishfile .gitconfig .tmux.conf .tmuxp/d.yaml .atom/package.yaml .cobra.yaml

mkdir -p $HOME/.tmuxp
mkdir -p $HOME/.config/fish
mkdir -p $HOME/.credentials/gcp
mkdir -p $HOME/.atom

for file in $DOT_FILES
  ln -sf $HOME/.ghq/github.com/mpppk/dotfiles/$file $HOME/$file
end
