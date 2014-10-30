FROM cjhardekopf/confd
MAINTAINER Chris Hardekopf <cjh@ygdrasill.com>

# Install collectd
RUN apt-get update && apt-get install -y collectd && \
        rm -rf /var/lib/apt/lists/*

# Set up confd configuration
ADD collectd.conf.tmpl /etc/confd/templates/
ADD collectd.toml /etc/confd/conf.d/

# Set up supervisor configuration
ADD collectd.conf /etc/supervisor/conf.d/

# Expose collectd
EXPOSE 25826/udp


