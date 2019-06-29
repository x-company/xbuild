#!/usr/bin/env bats
# -*- coding: utf-8 -*-

load init

@test "Exists xbuild Commands" {

    # Arrange

    # Act

    # Assert
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
    [ -f "/usr/local/bin/xb-test" ]
}

@test "Exists xbuild Folders" {

    # Arrange

    # Act

    # Assert
    [ -d "/etc/xbuild" ]
    [ -d "/etc/xbuild/env.d" ]
}

@test "Exists s6 Folders" {

    # Arrange

    # Act

    # Assert
    [ -d "/etc/cont-finish.d" ]
    [ -d "/etc/cont-init.d" ]
    [ -d "/etc/fix-attrs.d" ]
    [ -d "/etc/s6" ]
    [ -d "/etc/services.d" ]
    [ -d "/libexec" ]
}

@test "Exists socklog Folders" {

    # Arrange

    # Act

    # Assert
    [ -d "/etc/socklog.rules" ]
    [ -d "/var/log/socklog" ]
}
