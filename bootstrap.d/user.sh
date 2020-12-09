#!/bin/bash

info 'Create directories'

DIRS=(
    bin
    etc
    scratch
    src
    var
)

for d in ${DIRS[@]}; do
    mkdir -p ${HOME}/${d}
done

source bootstrap.d/keyboard.sh
source bootstrap.d/zsh.sh
source bootstrap.d/dotfiles.sh
source bootstrap.d/private.sh
