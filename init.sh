#!/bin/sh

if ! [ -z ${FORWARD_DNS+x} ]
then
  sed 's/^nameserver.*/nameserver '${FORWARD_DNS}'/' /etc/resolv.conf > /etc/resolv.conf.local
else
  cp /etc/resolv.conf /etc/resolv.conf.local
fi

/usr/sbin/dnsmasq -k -r /etc/resolv.conf.local --log-queries
