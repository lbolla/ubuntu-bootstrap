#!/bin/bash

PROTONVPN_VENV=${HOME}/.virtualenvs/protonvpn

if [ ! -d ${PROTONVPN_VENV} ]; then
    info 'Install protonvpn'
    virtualenv ${PROTONVPN_VENV}
    ${PROTONVPN_VENV}/bin/pip install protonvpn-cli
fi

if [ $_bootstrap_upgrade -eq 1 ]; then
    debug 'Upgrade protonvpn'
    ${PROTONVPN_VENV}/bin/pip install --upgrade protonvpn-cli
fi
