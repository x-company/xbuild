#!/usr/bin/env bash
# -*- coding: utf-8 -*-

s6ver="1.22.1.0"
socklogver="3.1.0-2"

mkdir -p ./update

cd ./update || exit 1

if [ ! -f ./s6-overlay-amd64.tar.gz ]; then
    wget "https://github.com/just-containers/s6-overlay/releases/download/v$s6ver/s6-overlay-amd64.tar.gz"
fi

# Cleanup old
rootfs="../src/xcompany/xbuild/rootfs/"
servicedir="../src/xcompany/xbuild/build/services"

rm -rf "${rootfs:?}/init"
rm -rf "${rootfs:?}/bin"
rm -rf "${rootfs:?}/etc/cont-finish.d/"
rm -rf "${rootfs:?}/etc/cont-init.d/"
rm -rf "${rootfs:?}/etc/fix-attrs.d/"
rm -rf "${rootfs:?}/etc/s6/"
rm -rf "${rootfs:?}/etc/services.d/"
rm -rf "${rootfs:?}/etc/leapsecs.dat"
rm -rf "${rootfs:?}/libexec"
rm -rf "${rootfs:?}/usr/bin"

tar xzf ./s6-overlay-amd64.tar.gz -C ${rootfs:?}

if [ ! -f ./socklog-overlay-amd64.tar.gz ]; then
    wget "https://github.com/just-containers/socklog-overlay/releases/download/v$socklogver/socklog-overlay-amd64.tar.gz"
fi

rm -rf "${rootfs:?}/var/log"

tar xzf ./socklog-overlay-amd64.tar.gz -C ${rootfs:?}

mv "${rootfs:?}/etc/services.d/socklog/run" "${servicedir}/socklog/socklog.run"
mv "${rootfs:?}/etc/services.d/socklog/log/run" "${servicedir}/socklog/log/socklog.run"
mv "${rootfs:?}/etc/cont-init.d/~-socklog" "${servicedir}/socklog/socklog.init"
rm -rf "${rootfs:?}/etc/cont-init.d/~-socklog"
rm -rf "${rootfs:?}/etc/services.d/socklog"

cd ..
