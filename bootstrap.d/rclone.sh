#!/bin/bash

# See https://rclone.org/downloads/

RCLONE_EXEC='/usr/bin/rclone'
if [ ! -x ${RCLONE_EXEC} ]; then
    info 'Install rclone'
    curl https://rclone.org/install.sh | sudo bash
fi

if [ $_bootstrap_upgrade -eq 1 ]; then
    debug 'Upgrade rclone'
    set +e
    curl https://rclone.org/install.sh | sudo bash
    # errcode 3 means: nothing to upgrade
    if [ $? -ne 0 -a $? -ne 3 ]; then
        die "rclone update failed: exit code $?"
    fi
    set -e
fi
