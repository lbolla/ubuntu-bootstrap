#!/bin/bash

debug 'Update'
sudo apt update 

debug 'Upgrade'
sudo apt upgrade --yes

info 'Install packages'

PACKAGES=(
    apt-file
    autoconf
    curl
    gcc
    git
    gstreamer1.0-libav
    htop
    httpie
    iftop
    imagemagick
    libgif-dev
    libgnutls28-dev
    libgtk-3-dev
    libjansson-dev
    libjansson4
    libjpeg-dev
    libncurses-dev
    libpng-dev
    libtiff5-dev
    libx11-dev
    libxpm-dev
    make
    mpv
    net-tools
    nmap
    openssh-server
    pass
    pkg-config
    stow
    texinfo
    texlive
    texlive-latex-extra
    tmux
    virtualenvwrapper
    zsh
)

debug 'Install'
sudo apt install --yes ${PACKAGES[@]}

debug 'Autoremove'
sudo apt autoremove --yes

SNAPS=(
    authy
    chromium
    # teams
)

info 'Install snaps'

for s in ${SNAPS[@]}; do
    sudo snap install --beta ${s}
done
