#!/bin/bash

info 'Setup keyboard'

if [ $(grep -q 'XKBOPTIONS=""' /etc/default/keyboard) ]; then
    sudo sed -i 's/XKBOPTIONS=""/XKBOPTIONS="ctrl:nocaps"/' /etc/default/keyboard
    setxkbmap -option "ctrl:nocaps"
fi
