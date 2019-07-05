#!/bin/bash

cd ./.devcontainer || exit 1

rootfs="../src/xcompany/xbuild/rootfs"

rm -rf "${rootfs:?}/bin/"
rm -rf "${rootfs:?}/etc/cont-finish.d/"
rm -rf "${rootfs:?}/etc/cont-init.d/"
rm -rf "${rootfs:?}/etc/fix-attrs.d/10-consul.attrs"
rm -rf "${rootfs:?}/etc/s6/"
rm -rf "${rootfs:?}/etc/services.d/"
rm -rf "${rootfs:?}/etc/socklog.rules/"
rm -rf "${rootfs:?}/etc/leapsecs.dat"
rm -rf "${rootfs:?}/etc/xbuild/env.d/"
rm -rf "${rootfs:?}/libexec/"
rm -rf "${rootfs:?}/usr/bin/"
rm -rf "${rootfs:?}/usr/local/bin/consul"
rm -rf "${rootfs:?}/usr/local/bin/consul-template"
rm -rf "${rootfs:?}/var/cache/"
rm -rf "${rootfs:?}/var/local/"
rm -rf "${rootfs:?}/var/log/socklog/"
rm -rf "${rootfs:?}/var/log/xbuild/"
rm -rf "${rootfs:?}/var/run/"
rm -rf "${rootfs:?}/init"
rm -rf "${rootfs:?}/etc/xbuild/sources.list" ||

cd ..
