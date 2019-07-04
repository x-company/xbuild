#!/bin/bash

cd ./.devcontainer || exit 1

rootfs="../src/xcompany/xbuild/rootfs"

rm -rf "${rootfs:?}/etc/s6/init/env/*"
rm -rf "${rootfs:?}/etc/xbuild/env.d/"
rm -rf "${rootfs:?}/etc/xbuild/sources.list"
rm -rf "${rootfs:?}/var/cache/"
rm -rf "${rootfs:?}/var/local/"
rm -rf "${rootfs:?}/var/log/xbuild/"
rm -rf "${rootfs:?}/var/run/"

cd ..
