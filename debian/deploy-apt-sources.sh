 #!/bin/bash

if [ $# -ne 1 ]; then
  echo "You must pass just one argument to $0 as DOTPATH" 1>&2
  exit 1
fi

DOTPATH=$1
DOT_FILES=(
    shells:fish:release:3.list
    yarn.list
)

 for file in ${DOT_FILES[@]}
 do
     sudo ln -sfv $DOTPATH/debian/apt-sources/$file /etc/apt/sources.list.d/$file
 done