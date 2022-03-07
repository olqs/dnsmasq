#!/bin/sh

if ! [ -z ${FORWARD_DNS+x} ]
then
  sed -i 's/^nameserver.*/nameserver '${FORWARD_DNS}'/' /etc/resolv.conf
fi

/usr/sbin/dnsmasq -k
