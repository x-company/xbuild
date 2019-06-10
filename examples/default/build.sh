#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Load the xBuild System
source /usr/local/include/xbuild/loader

# Enable Debug Mode
# debug --on

# Enable Debug Mode inclusive Debug Outputs from Shell
# debug --on --dev

# Load the Environment Variables to the current Session
loadvars

# For Debug you can print current Vars
# printvars

# Prepare the Image
prepare

# Alternatives
# Remarks: If you add the Param --dev additional Development Tools will installed
# Example: prepare --dev

# Prepare the Image
# prepare

# Prepare the Image inclusive NodeJS 12.x
# prepare --with-node-12

# Prepare the Image inclusive DotNet Core
# prepare --with-dotnet

# Prepare the Image inclusive PowerShell
# prepare --with-powershell

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

header "That's it. xBuild has finished his work. Have a nice Day"
