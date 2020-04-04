#!/usr/bin/env bats
# -*- coding: utf-8 -*-

load init

@test "Exists xbuild Commands" {

    # Arrange

    # Act

    # Assert
    [ -f "/usr/local/bin/xb-addserviceuser" ]
    [ -f "/usr/local/bin/xb-build" ]
    [ -f "/usr/local/bin/xb-buildsvc" ]
    [ -f "/usr/local/bin/xb-cleanup" ]
    [ -f "/usr/local/bin/xb-configure" ]
    [ -f "/usr/local/bin/xb-env" ]
    [ -f "/usr/local/bin/xb-harden" ]
    [ -f "/usr/local/bin/xb-header" ]
    [ -f "/usr/local/bin/xb-healthcheck" ]
    [ -f "/usr/local/bin/xb-install" ]
    [ -f "/usr/local/bin/xb-log" ]
    [ -f "/usr/local/bin/xb-prepare" ]
    [ -f "/usr/local/bin/xb-rmrf" ]
    [ -f "/usr/local/bin/xb-runtime" ]
    [ -f "/usr/local/bin/xb-test" ]
}

@test "Exists xbuild Folders" {

    # Arrange

    # Act

    # Assert
    [ -d "/etc/xbuild" ]
    [ -d "/etc/xbuild/env.d" ]
}
