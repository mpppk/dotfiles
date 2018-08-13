set -U FZF_LEGACY_KEYBINDINGS 0
set -x GOROOT /usr/local/opt/go/libexec
set -x GOPATH ~/go
set -x PATH $HOME/go/bin $GOROOT/bin $PATH
set -x GOOGLE_APPLICATION_CREDENTIALS $HOME/.credentials/gcp/project.json
