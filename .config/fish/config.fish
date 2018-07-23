set -x GOROOT /usr/local/opt/go/libexec
set -x GOPATH ~/go
set -x PATH $HOME/go/bin $GOROOT/bin $PATH
set -x DOCKER_HOST 'tcp://0.0.0.0:2375'
