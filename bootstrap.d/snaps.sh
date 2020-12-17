#!/bin/bash

info 'Install snaps'

case "$(hostname)" in
    "jiren")
        # Personal stuff
        SNAPS=(
            authy
            chromium
            teams
        )
        for s in "${SNAPS[@]}"; do
            sudo snap install --beta "${s}"
        done
        ;;
    "frieza")
        # YouGov stuff
        SNAPS=(
            authy
            slack
        )
        for s in "${SNAPS[@]}"; do
            sudo snap install --beta "${s}"
        done
        ;;
esac

if [ "$_bootstrap_upgrade" -eq 1 ]; then
    sudo snap refresh
fi
