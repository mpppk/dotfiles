#!/bin/bash

GOTAR=go1.15.2.linux-amd64.tar.gz

wget -nv https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz
sudo tar -xf $GOTAR -C /usr/local
rm $GOTAR
