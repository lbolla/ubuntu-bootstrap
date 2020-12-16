#!/bin/bash

info 'Setup private'

PRIVATE_PATH="${HOME}/Private"

if [ ! -d "${PRIVATE_PATH}" ]; then

    REPO="/media/${USER}/PHILIPS UFD"

    while [ ! -d "${REPO}" ]; do
        warn 'No usbkey found'
        info 'Insert usbkey and press any key when done...'
        read
    done

    restic -r "${REPO}" restore latest --path "${PRIVATE_PATH}" --target "${PRIVATE_PATH}"

fi

pushd "${PRIVATE_PATH}"
./setup.sh
popd
