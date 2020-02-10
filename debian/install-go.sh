#!/bin/bash

GOTAR=go1.13.5.linux-amd64.tar.gz

wget https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz
sudo tar -xvf $GOTAR -C /usr/local
rm $GOTAR
