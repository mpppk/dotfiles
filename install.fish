#!/usr/bin/fish

mkdir -p $HOME/.config/fish/functions
bash $argv[1]/deploy.sh $argv[1]
if type -q fisher
    echo "fisher installation is skipped. (already installed)"
else
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
end
source $HOME/.config/fish/config.fish
fisher update
