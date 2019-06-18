#!/usr/bin/env bash
# -*- coding: utf-8 -*-

mkdir -p ./tmp
cd ./tmp
wget https://github.com/just-containers/s6-overlay/releases/download/v1.22.1.0/s6-overlay-amd64.tar.gz
tar xzf ./s6-overlay-amd64.tar.gz -C ../src/
cd ..
rm -rf ./tmp
