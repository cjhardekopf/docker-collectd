docker-collectd-graphite
========================

Collectd server that just listens on port ?? and forwards everything to an external graphite server. There is no persistent data. This image uses the *cjhardekopf/confd* base image to configure collectd using confd. Keys for the configuration are as follows:
* host - Graphite host
* port - Graphite port (defaults to 2003)
