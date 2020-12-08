#!/bin/bash

info 'Install rg'

# See https://github.com/BurntSushi/ripgrep/releases/

if [ ! -f $HOME/bin/rg ]; then
    VERSION=12.1.1
    NAME=ripgrep-${VERSION}-x86_64-unknown-linux-musl
    TARBALL=${NAME}.tar.gz
    curl -L https://github.com/BurntSushi/ripgrep/releases/download/${VERSION}/${TARBALL} -o /tmp/${TARBALL}

    pushd /opt
    sudo tar xf /tmp/${TARBALL}
    ln -sf /opt/${NAME}/rg ${HOME}/bin/rg
    rm -f /tmp/${TARBALL}
    popd
fi
