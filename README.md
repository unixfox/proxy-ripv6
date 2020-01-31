
# [caddy HTTP Proxy RIPv6](https://hub.docker.com/r/unixfox/caddy-proxy-ripv6/) [![](https://images.microbadger.com/badges/version/unixfox/caddy-proxy-ripv6.svg)](https://microbadger.com/images/unixfox/caddy-proxy-ripv6 "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/unixfox/caddy-proxy-ripv6.svg)](https://microbadger.com/images/unixfox/caddy-proxy-ripv6 "Get your own image badge on microbadger.com")

A tiny Caddy image with the [Forward Proxy plugin](https://github.com/caddyserver/forwardproxy) compressed with [UPX](https://github.com/upx/upx) and with [RIPv6](https://github.com/scipag/RIPv6) script.

# Usage

The HTTP proxy port is 2015:
```
docker run -it --rm -p 2015:2015 unixfox/caddy-proxy-ripv6
```

Overwrite `Caddyfile`:
```
docker run -it --rm -p 2015:2015 -v $PWD/Caddyfile:/etc/Caddyfile unixfox/caddy-proxy-ripv6
```

Access the `.caddy` in case you need it:
```
docker run -it --rm -p 2015:2015 -v $PWD/Caddyfile:/etc/Caddyfile -v $HOME/.caddy:/etc/.caddy unixfox/caddy-proxy-ripv6
```
