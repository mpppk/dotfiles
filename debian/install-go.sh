#!/bin/bash

GOTAR=go1.16.linux-amd64.tar.gz
curl -LO https://golang.org/dl/$GOTAR
sudo tar -C /usr/local -xzf $GOTAR
rm $GOTAR
