#!/bin/bash

info 'Install protonvpn'

PROTONVPN_VENV=${HOME}/.virtualenvs/protonvpn

if [ ! -d ${PROTONVPN_VENV} ]; then
    virtualenv ${PROTONVPN_VENV}
fi
${PROTONVPN_VENV}/bin/pip install --upgrade protonvpn-cli
