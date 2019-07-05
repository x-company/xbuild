#!/usr/bin/env bash
# -*- coding: utf-8 -*-

s6ver="1.22.1.0"
socklogver="3.1.0-2"
consulver="1.5.2"
consultemplatever="0.20.0"

mkdir -p ./update
cd ./update || exit 1

# Download Sources
if [ ! -f ./s6-overlay-amd64.tar.gz ]; then
    wget "https://github.com/just-containers/s6-overlay/releases/download/v${s6ver}/s6-overlay-amd64.tar.gz"
fi

if [ ! -f ./socklog-overlay-amd64.tar.gz ]; then
    wget "https://github.com/just-containers/socklog-overlay/releases/download/v${socklogver}/socklog-overlay-amd64.tar.gz"
fi

if [ ! -f "./consul_${consulver}_linux_amd64.zip" ]; then
    wget "https://releases.hashicorp.com/consul/${consulver}/consul_${consulver}_linux_amd64.zip"
fi

if [ ! -f "./consul-template_${consultemplatever}_linux_amd64.zip" ]; then
    wget "https://releases.hashicorp.com/consul-template/${consultemplatever}/consul-template_${consultemplatever}_linux_amd64.zip"
fi

# Cleanup old
rootfs="../src/xcompany/xbuild/rootfs/"
servicedir="../src/xcompany/xbuild/build/services"

rm -rf "${rootfs:?}/init"
rm -rf "${rootfs:?}/bin"
rm -rf "${rootfs:?}/etc/s6/"
rm -rf "${rootfs:?}/etc/leapsecs.dat"
rm -rf "${rootfs:?}/libexec"
rm -rf "${rootfs:?}/usr/bin"
rm -rf "${rootfs:?}/var/log"

# Unpack Downloads
tar -xzf ./s6-overlay-amd64.tar.gz -C ${rootfs:?}
tar -xzf ./socklog-overlay-amd64.tar.gz -C ${rootfs:?}
unzip -o "./consul_${consulver}_linux_amd64.zip" -d ${rootfs:?}/usr/local/bin
unzip -o "./consul-template_${consultemplatever}_linux_amd64.zip" -d ${rootfs:?}/usr/local/bin

# Move Socklog Service Files to Service Dir
mv -f "${rootfs:?}/etc/services.d/socklog/run" "${servicedir}/socklog/socklog.run"
mv -f "${rootfs:?}/etc/services.d/socklog/log/run" "${servicedir}/socklog/log/socklog.run"
mv -f "${rootfs:?}/etc/cont-init.d/~-socklog" "${servicedir}/socklog/99-socklog.init"
rm -rf "${rootfs:?}/etc/cont-init.d/~-socklog"
rm -rf "${rootfs:?}/etc/services.d/socklog"

cd ..
