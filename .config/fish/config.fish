set -U FZF_LEGACY_KEYBINDINGS 0
set -x GOOGLE_APPLICATION_CREDENTIALS $HOME/.credentials/gcp/project.json
set -x GOROOT /usr/local/go
set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin $GOROOT/bin $PATH
