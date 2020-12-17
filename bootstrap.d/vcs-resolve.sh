#!/bin/bash

VCS_RESOLVE_D=${HOME}/src/github.com/lbolla/vcs-resolve

if [ ! -d "${VCS_RESOLVE_D}" ]; then
    info 'Install vcs-resolve'
    git clone https//github.com/lbolla/vcs-resolve.git "${VCS_RESOLVE_D}"
fi

if [ "$_bootstrap_upgrade" -eq 1 ]; then
    debug 'Upgrade vcs-resolve'
    pushd "${VCS_RESOLVE_D}"
    git pull
    popd
fi
