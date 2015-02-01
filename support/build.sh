#!/bin/bash
STUNNEL_VERSION=5.10

docker build -t jtatum/stunnel-builder .

mkdir -p cache
docker run -i -v /home/docker/cache:/var/cache \
  --name stunnel-builder \
  -e STUNNEL_VERSION=$STUNNEL_VERSION \
  jtatum/stunnel-builder

mkdir -p out
docker cp stunnel-builder:/tmp/stunnel-$STUNNEL_VERSION-cedar14.tar.gz \
  out/stunnel-$STUNNEL_VERSION-cedar14.tar.gz

docker rm stunnel-builder
