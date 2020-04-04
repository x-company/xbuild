#!/usr/bin/env bats
# -*- coding: utf-8 -*-

load init

@test "Test install of nodejs" {

    # Arrange
    if [ -f /usr/bin/node ]; then
        apt-get purge -qy nodejs
    fi

    # Act
    run apt-get install -qy --no-install-recommends nodejs

    # Assert
    [ "$status" -eq 0 ]
}
