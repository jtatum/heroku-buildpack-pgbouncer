#!/usr/bin/env bash

mkdir -p /app/vendor/stunnel/var/run/stunnel/
cat >> /app/vendor/stunnel/stunnel.conf << EOFEOF
foreground = yes

options = NO_SSLv2
options = SINGLE_ECDH_USE
options = SINGLE_DH_USE
socket = r:TCP_NODELAY=1
options = NO_SSLv3
ciphers = HIGH:!ADH:!AECDH:!LOW:!EXP:!MD5:!3DES:!SRP:!PSK:@STRENGTH

[lily]
client = yes
accept = /tmp/.s.lily.nom
connect = lily.nominum.com:7778
EOFEOF

chmod go-rwx /app/vendor/stunnel/*
