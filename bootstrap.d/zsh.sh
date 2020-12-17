#!/bin/bash

info 'Setup zsh'

ZSH_EXEC="/usr/bin/zsh"
if [ ! -x ${ZSH_EXEC} ]; then
    die "No zsh found"
fi

if [ "${SHELL}" != "${ZSH_EXEC}" ]; then
    chsh -s "${ZSH_EXEC}" "${USER}"
fi

info 'Setup oh-my-zsh'

if [ ! -d "${HOME}/.oh-my-zsh/" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ -f "${HOME}/.zshrc.pre-oh-my-zsh" ]; then
    mv "${HOME}/.zshrc.pre-oh-my-zsh" "${HOME}/.zshrc"
fi

debug 'Install zsh-autosuggestions'
ZSH_AUTOSUGGESTIONS_D=${HOME}/src/github.com/zsh-users/zsh-autosuggestions/
if [ ! -d "${ZSH_AUTOSUGGESTIONS_D}" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_AUTOSUGGESTIONS_D}"
    ln -sf "${ZSH_AUTOSUGGESTIONS_D}" "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
fi
