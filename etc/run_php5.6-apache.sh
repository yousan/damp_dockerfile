#!/usr/bin/env bash
docker run -p 80:80/tcp \
  -v ~/public_html:/var/www/vhosts \
  -v ~/git:~/git \
  -i -t yousan/php5.6-apache:${VERSION} /bin/bash