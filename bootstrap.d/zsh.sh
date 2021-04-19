#!/bin/bash

info 'Setup zsh'

ZSH_EXEC="/usr/bin/zsh"
if [ ! -x ${ZSH_EXEC} ]; then
    die "No zsh found"
fi

info 'Setup oh-my-zsh'

if [ ! -d "${HOME}/.oh-my-zsh/" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ -f "${HOME}/.zshrc.pre-oh-my-zsh" ]; then
    mv "${HOME}/.zshrc.pre-oh-my-zsh" "${HOME}/.zshrc"
fi
# We'll use the one in dotfiles
mv "${HOME}/.zshrc" "${HOME}/.zshrc.original"

debug 'Install zsh-autosuggestions'
ZSH_AUTOSUGGESTIONS_D=${HOME}/src/github.com/zsh-users/zsh-autosuggestions/
if [ ! -d "${ZSH_AUTOSUGGESTIONS_D}" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_AUTOSUGGESTIONS_D}"
    ln -sf "${ZSH_AUTOSUGGESTIONS_D}" "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
fi

debug 'Install fzf-tab'
# See https://github.com/Aloxaf/fzf-tab
FZF_TAB_D=${HOME}/src/github.com/Aloxaf/fzf-tab/
if [ ! -d "${FZF_TAB_D}" ]; then
    git clone https://github.com/Aloxaf/fzf-tab ${FZF_TAB_D}
    ln -sf "${ZSH_AUTOSUGGESTIONS_D}" "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/fzf-tab"
fi
