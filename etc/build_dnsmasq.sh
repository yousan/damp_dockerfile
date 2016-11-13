#!/usr/bin/env bash
if [ -z ${VERSION} ]; then
  echo "Please set \$VERSION";
  exit
fi
cd -- "$(dirname "$BASH_SOURCE")"
cd ../dnsmasq/
docker build -t yousan/dnsmasq:${VERSION} -f Dockerfile .