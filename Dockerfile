FROM debian:wheezy
MAINTAINER Chris Hardekopf <cjh@ygdrasill.com>

# Install collectd
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive  apt-get install -y collectd && \
    rm -rf /var/lib/apt/lists/*

# Expose collectd
EXPOSE 25826/udp

CMD [ "/usr/sbin/collectd", "-f" ]

