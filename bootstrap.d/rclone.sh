#!/bin/bash

info 'Install rclone'

# See https://rclone.org/downloads/

RCLONE_EXEC='/usr/bin/rclone'
if [ ! -x ${RCLONE_EXEC} ]; then
    curl https://rclone.org/install.sh | sudo bash
fi
