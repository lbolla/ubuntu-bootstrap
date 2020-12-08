#!/bin/bash

info 'Install emacs'

EMACS_D=${HOME}/src/git.savannah.gnu.org/emacs

if [ ! -d ${EMACS_D} ]; then
    git clone https://git.savannah.gnu.org/git/emacs.git ${EMACS_D}
fi
