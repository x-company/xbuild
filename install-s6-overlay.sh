#!/usr/bin/env bash
# -*- coding: utf-8 -*-

s6ver="1.22.1.0"
socklogver="3.1.0-2"

mkdir -p ./tmp
cd ./tmp || exit 1
wget "https://github.com/just-containers/s6-overlay/releases/download/v$s6ver/s6-overlay-amd64.tar.gz"
tar xzf ./s6-overlay-amd64.tar.gz -C ../src/xcompany/xbuild/rootfs

wget "https://github.com/just-containers/socklog-overlay/releases/download/v$socklogver/socklog-overlay-amd64.tar.gz"
tar xzf ./socklog-overlay-amd64.tar.gz -C ../src/xcompany/xbuild/build/rootfs

mv ../src/xcompany/xbuild/build/rootfs/etc/services.d/socklog/run ../src/xcompany/xbuild/build/services/socklog/socklog.run
mv ../src/xcompany/xbuild/build/rootfs/etc/services.d/socklog/log/run ../src/xcompany/xbuild/build/services/socklog/log/socklog.run
mv ../src/xcompany/xbuild/build/rootfs/etc/cont-init.d/~-socklog ../src/xcompany/xbuild/build/services/socklog/socklog.init
rm -rf ../src/xcompany/xbuild/build/rootfs/etc/cont-init.d/~-socklog
rm -rf ../src/xcompany/xbuild/build/rootfs/etc/services.d/socklog

cd ..
rm -rf ./tmp
