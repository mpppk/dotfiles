 #!/bin/bash

set DOT_FILES .config/fish .config/fisherman

for file in $DOT_FILES
do
  ln -s $HOME/dotfiles/$file $HOME/$file
done
