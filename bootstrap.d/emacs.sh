#!/bin/bash

info 'Install emacs'

EMACS_D=${HOME}/src/git.savannah.gnu.org/emacs

if [ ! -d "${EMACS_D}" ]; then
    git clone https://git.savannah.gnu.org/git/emacs.git "${EMACS_D}"
fi

if [ "$_bootstrap_upgrade" -eq 1 ]; then
    pushd "${EMACS_D}"
    git pull
    popd
fi

EMACS_QUASI_MONOCHROME_D=${HOME}/src/github.com/lbolla/emacs-quasi-monochrome

if [ ! -d "${EMACS_QUASI_MONOCHROME_D}" ]; then
    info 'Install quasi-monochrome theme'
    git clone https://github.com/lbolla/emacs-quasi-monochrome.git "${EMACS_QUASI_MONOCHROME_D}"
fi

