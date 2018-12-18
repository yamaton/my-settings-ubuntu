#!/bin/bash

if [ "$1" = "-f" ] || [ ! -x "$(command -v gotop)" ]; then
    if [ "$(uname -m)" == "x86_64" ]; then
        wget https://github.com/cjbassi/gotop/releases/download/1.7.1/gotop_1.7.1_linux_amd64.tgz
        tar xzf gotop_1.7.1_linux_amd64.tgz
    fi
    if [ "$(uname -m)" == "armv7l" ]; then
        wget https://github.com/cjbassi/gotop/releases/download/1.7.1/gotop_1.7.1_linux_arm7.tgz
        tar xzf gotop_1.7.1_linux_arm7.tgz
    fi
    if [ "$(uname -m)" == "darwin" ]; then
        wget https://github.com/cjbassi/gotop/releases/download/1.7.1/gotop_1.7.1_darwin_amd64.tgz
        tar xzf gotop_1.7.1_darwin_amd64.tgz
    fi
    [ ! -d ~/bin ] && mkdir ~/bin
    mv gotop ~/bin
fi