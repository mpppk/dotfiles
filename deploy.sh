 #!/bin/bash

DOT_FILES=(
    .config/fish/functions
    .config/fish/config.fish
    .config/fish/fishfile
    .gitconfig
    .gitignore_global
    .tmux.conf
    .cobra.yaml
    .vimrc
)

 for file in ${DOT_FILES[@]}
 do
     ln -sfv $HOME/dotfiles/$file $HOME/$file
 done
