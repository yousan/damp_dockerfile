#!/usr/bin/env bash
# VERSION=0.6
cd -- "$(dirname "$BASH_SOURCE")"
cd ../php5.6/apache/
docker build -t yousan/php5.6-apache:${VERSION} -f Dockerfile .