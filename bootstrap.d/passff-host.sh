#!/bin/bash

info 'Install passff-host'

# See https://github.com/passff/passff-host

PASSFF_EXEC=/home/lbolla/.mozilla/native-messaging-hosts/passff.py
if [ ! -x ${PASSFF_EXEC} ]; then
    curl -sSL github.com/passff/passff-host/releases/latest/download/install_host_app.sh | bash -s -- firefox
fi
