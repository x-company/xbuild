#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Load the xBuild System
source /usr/local/include/xbuild/loader

# Enable Debug Mode
# debug --on

# Load the Environment Variables to the current Session
loadvars

if [ -d /etc/xinit/health.d ]
then
    for file in /etc/xinit/health.d/*
    do
        [ -e "$file" ] || continue

        log "Execute Health Check '$file'"
        bash "$file"
    done
fi
