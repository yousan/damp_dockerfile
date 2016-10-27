#!/usr/bin/env bash
# VERSION=0.6
cd -- "$(dirname "$BASH_SOURCE")"
cd ../phpmyadmin
docker build -t yousan/phpmyadmin:${VERSION} -f Dockerfile .