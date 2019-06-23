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
    [ -d "/etc/xbuild/apt" ]
    [ -d "/etc/xbuild/apt/sources.list.d" ]
    [ -f "/etc/xbuild/apt/sources.list.d/Debian.buster.list" ]
    [ -f "/etc/xbuild/apt/sources.list.d/Debian.jessie.list" ]
    [ -f "/etc/xbuild/apt/sources.list.d/Debian.stretch.list" ]
    [ -f "/etc/xbuild/apt/sources.list.d/Ubuntu.bionic.list" ]
    [ -f "/etc/xbuild/apt/sources.list.d/Ubuntu.cosmic.list" ]
    [ -f "/etc/xbuild/apt/sources.list.d/Ubuntu.disco.list" ]
    [ -f "/etc/xbuild/apt/sources.list.d/Ubuntu.xenial.list" ]
    [ -d "/etc/xbuild/apt/trusted.gpg.d" ]
    [ -f "/etc/xbuild/apt/trusted.gpg.d/microsoft.gpg" ]
    [ -f "/etc/xbuild/apt/trusted.gpg.d/nodesource.gpg" ]
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
