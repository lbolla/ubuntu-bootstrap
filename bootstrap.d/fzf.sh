#!/bin/bash

info 'Install fzf'

# See https://github.com/junegunn/fzf

FZF_D=${HOME}/.fzf
if [ ! -d ${FZF_D} ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ${FZF_D}
fi

pushd ${FZF_D}
git pull
./install --key-bindings --completion --no-update-rc
popd
