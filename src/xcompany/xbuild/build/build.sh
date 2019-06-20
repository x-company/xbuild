#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# This is the main Build File for your Docker Image
#
# POWERTIP: Use Snippet xb-build to create a Sample
# Hint: Look also for other Snippets with the Prefix 'xb-...'


# Load the xBuild System
source /usr/local/include/xbuild/loader

# Load the Environment Variables to the current Session
loadvars

# POWERTIP: Use the Snippet xb-prepare and xb-prepare-lang to Prepare your Image


header "Prepare Services for Install ..."
services=

header "Build Services ..."
build --services "$services"

# Persist Environment Variables
savevars

# Cleanup the Build and the Image. It should called when you finished your Work
cleanup

header "That's it. xBuild has finished his work. Have a nice Day"
