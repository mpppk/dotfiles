 #!/bin/bash

DOT_FILES=(
    .tmuxp
    .atom
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
     ln -sfv $HOME/workspace/$file $HOME/$file
 done