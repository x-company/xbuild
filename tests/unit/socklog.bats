#!/usr/bin/env bats
# -*- coding: utf-8 -*-

load init

@test "Exists socklog Folders" {

    # Arrange

    # Act

    # Assert
    [ -d "/etc/socklog.rules" ]
    [ -d "/var/log/socklog" ]
}
