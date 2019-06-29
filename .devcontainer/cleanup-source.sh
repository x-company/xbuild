#!/bin/bash

cd ./.devcontainer || exit 1

rootfs="../src/xcompany/xbuild/rootfs/"

rm -rf "${rootfs:?}/etc/xbuild/env.d/*"
rm -rf "${rootfs:?}/etc/xbuild/sources.list"
rm -rf "${rootfs:?}/var/cache/xbuild/packages/*"
rm -rf "${rootfs:?}/var/log/xbuild/*"
rm -rf "${rootfs:?}/var/run/xbuild/*"

cd ..
