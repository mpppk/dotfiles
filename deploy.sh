 #!/bin/bash

if [ $# -ne 1 ]; then
  echo "You must pass just one argument to $0 as DOTPATH" 1>&2
  exit 1
fi
DOTPATH=$1

DOT_FILES=(
    .config/fish/config.fish
    .config/fish/fishfile
    .gitconfig
    .gitignore_global
    .tmux.conf
    .cobra.yaml
    .vimrc
    .bashrc
)

 for file in ${DOT_FILES[@]}
 do
     ln -sfv $DOTPATH/$file $HOME/$file
 done
