#!/usr/bin/env bash
ocker run -p 80:80/tcp -i -t yousan/php5.6-apache:${VERSION} /bin/bash