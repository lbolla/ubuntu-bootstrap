#!/bin/bash

info 'Install vcs-resolve'

VCS_RESOLVE_D=${HOME}/src/github.com/lbolla/vcs-resolve

if [ ! -d ${VCS_RESOLVE_D} ]; then
    git clone git@github.com:lbolla/vcs-resolve.git ${VCS_RESOLVE_D}
fi
