#!/usr/bin/env sh

set -e

/ripv6.sh &
/bin/caddy --conf /etc/Caddyfile --log stdout

