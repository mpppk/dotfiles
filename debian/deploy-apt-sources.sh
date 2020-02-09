 #!/bin/bash

DOT_FILES=(
    shells:fish:release:3.list
    yarn.list
)

 DOTPATH=$HOME/dotfiles
 for file in ${DOT_FILES[@]}
 do
     sudo ln -sfv $DOTPATH/debian/apt-sources/$file /etc/apt/sources.list.d/$file
 done