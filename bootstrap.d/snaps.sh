#!/bin/bash

SNAPS=(
    authy
)

info 'Install snaps'

for s in "${SNAPS[@]}"; do
    sudo snap install --beta "${s}"
done

case "$(hostname)" in
    "jiren")
        # Personal stuff
        SNAPS=(
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
            slack
        )
        for s in "${SNAPS[@]}"; do
            sudo snap install --beta "${s}"
        done
        ;;
esac

sudo snap refresh
