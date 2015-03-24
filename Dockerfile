FROM debian:wheezy
MAINTAINER Chris Hardekopf <cjh@ygdrasill.com>

# Install collectd. I want just enough dependencies for the
# network and graphite plugins.
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive  apt-get install -y collectd libgcrypt11 --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Expose collectd
EXPOSE 25826/udp

CMD [ "/usr/sbin/collectd", "-f" ]

