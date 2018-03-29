#!/usr/bin/env bash

ansible windows -i hosts -m win_ping -vvvv
