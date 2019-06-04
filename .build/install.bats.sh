#!/usr/bin/env bash
# -*- coding: utf-8 -*-

source /usr/local/include/xbuild

header "Prepare Docker Image for Bash Testing"

log "Install Bats ..."
install bats
