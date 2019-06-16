#!/usr/bin/env bats
# -*- coding: utf-8 -*-

load init

@test "Test Base Image Preparation" {

    # Arrange
    flag_file=/var/local/xbuild/finished

    # Assert
    # Exists Install Flag
    [ -f "$flag_file" ]
}

@test "Set a Var" {

    # Arrange
    local expected="TestValue"

    # Act
    setvar "TestVar" "$expected"
    local actual="$TestVar"

    # Assert
    [ ! -z "$actual" ]
    [ "$actual" = "$expected" ]
}
