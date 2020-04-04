#!/usr/bin/env bats
# -*- coding: utf-8 -*-

load init

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
