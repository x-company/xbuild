#!/usr/bin/env bash
# -*- coding: utf-8 -*-


echo "$(sed -e "s/__XBUILD_BUILD_DATE__/$(date -u +'%Y-%m-%dT%H:%M:%SZ')/g" ./Dockerfile.tmpl)" > ./Dockerfile
echo "$(sed -e "s/__XBUILD_VCS_REF__/$(git rev-parse --short HEAD)/g" ./Dockerfile)" > ./Dockerfile
echo "$(sed -e "s/__XBUILD_VERSION__/npm_package_version/g" ./Dockerfile)" > ./Dockerfile
