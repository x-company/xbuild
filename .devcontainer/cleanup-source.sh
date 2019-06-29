#!/bin/bash

rootfs="../src/xcompany/xbuild/rootfs/"

rm -rfv "${rootfs:?}/etc/xbuild/env.d/*"
rm -rfv "${rootfs:?}/var/cache/xbuild/packages/"
rm -rfv "${rootfs:?}/var/log/xbuild/*"
rm -rfv "${rootfs:?}/var/run/xbuild/*"
