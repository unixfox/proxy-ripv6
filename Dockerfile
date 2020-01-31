#
# Build stage
#
FROM unixfox/caddy-proxy as build

#
# Final image
#
FROM alpine:latest

# labels
LABEL org.label-schema.vcs-url="https://github.com/unixfox/caddy-proxy-ripv6"
LABEL org.label-schema.version=${version}
LABEL org.label-schema.schema-version="1.0"

# copy binary and config file
COPY --from=build /bin/caddy /bin/caddy
COPY --from=build /etc/Caddyfile /etc/Caddyfile

# install packages for RIPv6
RUN apk add --no-cache bash pcre-tools sipcalc

# copy default files
ADD ripv6.sh /
ADD entrypoint.sh /

# set default caddypath
ENV CADDYPATH=/etc/.caddy
ENV SLEEP_TIME=60s

EXPOSE 2015

ENTRYPOINT ["/entrypoint.sh"]

