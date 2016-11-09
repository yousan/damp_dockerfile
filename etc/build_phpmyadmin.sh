#!/usr/bin/env bash
if [ -z ${VERSION} ]; then
  echo "Please set \$VERSION";
  exit
fi
cd -- "$(dirname "$BASH_SOURCE")"
cd ../phpmyadmin
docker build -t yousan/phpmyadmin:${VERSION} -f Dockerfile .