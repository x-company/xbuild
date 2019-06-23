#!/usr/bin/env bats
# -*- coding: utf-8 -*-

load init

@test "xbuild Commands available" {

    # Arrange
    flag_file=/var/local/xbuild/finished

    # Assert
    # Exists Install Flag
    [ -f "$flag_file" ]
}
