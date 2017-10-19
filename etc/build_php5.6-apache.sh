#!/usr/bin/env bash
if [ -z ${VERSION} ]; then
  echo "Please set \$VERSION";
  exit
fi
cd -- "$(dirname "$BASH_SOURCE")"
cd ../php5.6/apache/
docker build -t yousan/php5.6-apache:${VERSION} -f Dockerfile .
docker images | grep yousan/php5.6-apache:${VERSION}
docker push  yousan/php5.6-apache:${VERSION}
