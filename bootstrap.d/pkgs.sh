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
    net-tools
    nmap
    openssh-server
    pass
    pkg-config
    stow
    texinfo
    texlive
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
)

info 'Install snaps'

sudo snap install --beta ${SNAPS[@]}
sudo snap refresh
