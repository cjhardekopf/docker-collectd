FROM lopter/collectd-graphite
MAINTAINER Chris Hardekopf <cjh@ygdrasill.com>

# Add the new configuration
ADD storage-schemas.conf /opt/graphite/conf/
ADD storage-aggregation.conf /opt/graphite/conf/

# sshd, gunicorn, collectd, carbon/plaintext, carbon/pickle, carbon/amqp
EXPOSE 22 8080 25826/udp 2003 2004 7002
CMD ["supervisord","-n"]
