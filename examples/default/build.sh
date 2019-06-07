#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Load the xBuild System
source /usr/local/include/xbuild/loader

# Load the Environment Variables to the current Session
loadvars

# Prepare the Image
prepare

# Write an Header and Log Information
header "Lets start with xBuild"
log "A Log Info for the User"

# Update the Package Repository
execute apt update

# Install Nano Editor
install nano

# Cleanup the Build
cleanup

# Persist Environment Variables
savevars

log "That's it. xBuild has finished his work. Have a nice Day"
