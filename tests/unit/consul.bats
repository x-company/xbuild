#!/usr/bin/env bats
# -*- coding: utf-8 -*-

load init

@test "Exists consul" {

    # Arrange

    # Act

    # Assert
    [ -f "/usr/local/bin/consul" ]
    [ -f "/usr/local/bin/consul-template" ]
}

@test "Exists consul service" {

    # Arrange

    # Act

    # Assert
    [ -f "/etc/fix-attrs.d/10-consul.attrs" ]
    [ -f "/etc/service.d/consul/run" ]
    [ -f "/etc/service.d/consul/finish" ]
}
