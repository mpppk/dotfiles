#!/bin/bash

GOTAR=go1.15.7.linux-amd64.tar.gz

wget -nv https://dl.google.com/go/go1.15.7.linux-amd64.tar.gz
sudo tar -xf $GOTAR -C /usr/local
rm $GOTAR
