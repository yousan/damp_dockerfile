#!/bin/sh
# set -e

echo "hoge"
# `host php5.6-apache.dev`
dnsmasq -k
# RUN sed  -i -e 's/^#address=\/double-click.net\/127.0.0.1/address=\/ex5.dev\/172.26.0.2\naddress=\/dev\/127.0.0.1/' /etc/dnsmasq.conf
