#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Load the xBuild System
source /usr/local/include/xbuild/loader

# Load the Environment Variables to the current Session
loadvars

# For Debug you can print current Vars
# printvars

# Prepare the Image
prepare

# Alternatives
# Remarks: If you add the Param --dev additional Development Tools will installed

# Prepare the Image in Development Mode
# prepare --dev

# Prepare the Image inclusive NodeJS 12.x in Development Mode
# prepare --with-node-12 --dev

# Prepare the Image inclusive DotNet Core in Development Mode
# prepare --with-dotnet --dev

# Prepare the Image inclusive PowerShell in Development Mode
# prepare --with-powershell --dev

# Execute here your own Build and Install Needs
# ...

# Write an Header and Log Information
header "Lets start with xBuild"
log "A Log Info for the User"

# Install Nginx Server
install --packages nginx

# Persist Environment Variables
savevars

# Cleanup the Build and the Image. It should called when you finished your Work
cleanup

log "That's it. xBuild has finished his work. Have a nice Day"
