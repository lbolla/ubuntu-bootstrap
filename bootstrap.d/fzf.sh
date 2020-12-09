#!/bin/bash

# See https://github.com/junegunn/fzf

FZF_D=${HOME}/.fzf
if [ ! -d ${FZF_D} ]; then
    info 'Install fzf'
    git clone --depth 1 https://github.com/junegunn/fzf.git ${FZF_D}
    pushd ${FZF_D}
    ./install --key-bindings --completion --no-update-rc
    popd
fi

if [ $_bootstrap_upgrade -eq 1 ]; then
    debug 'Upgrade fzf'
    pushd ${FZF_D}
    git pull
    ./install --key-bindings --completion --no-update-rc
    popd
fi
