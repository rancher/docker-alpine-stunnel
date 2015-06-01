#!/bin/sh

ACCEPT_STRING="${ACCEPT_STRING:-127.0.0.1:19200}"

if [ -z ${CONNECT_STRING} ]; then
    echo "Must Specifiy CONNECT_STRING variable" 1>&2
    echo "In format <host>:<port>" 1>&2
    exit 1
fi

cat << EOF > /etc/stunnel/elasticsearch.conf
CApath = /etc/ssl/certs
verify = 2
delay = yes
foreground=yes

[foundelastic]
client = yes
accept = ${ACCEPT_STRING}
connect = ${CONNECT_STRING}
EOF


exec /usr/bin/stunnel /etc/stunnel/elasticsearch.conf
