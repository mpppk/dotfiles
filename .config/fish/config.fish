nvm use lts
op completion fish | source
set -U FZF_LEGACY_KEYBINDINGS 0
set -x GOROOT /usr/local/go
set -x GOPATH $HOME/go
set -x PATH /opt/homebrew/opt/libxml2/bin /opt/homebrew/opt/libxslt/bin $GOPATH/bin $GOROOT/bin $HOME/.cargo/bin /opt/homebrew/bin $PATH
set -x EDITOR vim
fish_add_path /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin

# https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
set -x USE_GKE_GCLOUD_AUTH_PLUGIN True

# op inject -i .config/fish/config.fish -o .config/fish/config.fish
set -x NODE_AUTH_TOKEN {{ op://Personal/GitHub Classic PAT general/token }}
