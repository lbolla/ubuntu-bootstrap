#!/bin/bash

info 'Setup private'

PRIVATE_D="${HOME}/Private"

if [ ! -d "${PRIVATE_D}" ]; then

    REPO="/media/${USER}/PHILIPS UFD/backup"

    while [ ! -d "${REPO}" ]; do
        warn 'No usbkey found'
        info 'Insert usbkey and press any key when done...'
        read
    done

    restic -r "${REPO}" restore latest --tag personal --target "/tmp/Private"
    mv "/tmp/Private/home/lbolla/Private" "${PRIVATE_D}"

fi

pushd "${PRIVATE_D}"
./setup.sh
popd
