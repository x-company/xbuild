#!/usr/bin/env bash
# -*- coding: utf-8 -*-

set -e

# Load the xBuild System
source /usr/local/sbin/xbuild

# Prepare the Image
prepare

# Write an Header and Log Information
header "Lets start with xBuild"
log "A Log Info for the User"

# Update the Package Repository
execute apt update

# Install Nano Editor
install nano

log "That's it. xBuild has finished his work. Have a nice Day"
