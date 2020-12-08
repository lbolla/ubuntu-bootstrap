#!/bin/bash

info 'Installing fonts'

debug 'Installing Iosevka'

# See https://github.com/be5invis/Iosevka/releases
IOSEVKA_D=/usr/share/fonts/truetype/iosevka
if [ ! -d ${IOSEVKA_D} ]; then
    VERSION=4.0.2
    NAME=ttf-iosevka-${VERSION}.zip

    if [ ! -f /tmp/${NAME} ]; then
        curl -L https://github.com/be5invis/Iosevka/releases/download/v${VERSION}/${NAME} -o /tmp/${NAME}
    fi

    sudo mkdir -p ${IOSEVKA_D}
    sudo unzip /tmp/${NAME} -d ${IOSEVKA_D}
    sudo fc-cache
fi
