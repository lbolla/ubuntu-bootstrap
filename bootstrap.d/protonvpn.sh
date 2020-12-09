#!/bin/bash

PROTONVPN_VENV=${HOME}/.virtualenvs/protonvpn
PROTONVPN_EXEC=${PROTONVPN_VENV}/bin/protonvpn

if [ ! -x ${PROTONVPN_EXEC} ]; then
    virtualenv ${PROTONVPN_VENV}
    ${PROTONVPN_VENV}/bin/pip install protonvpn-cli
fi
