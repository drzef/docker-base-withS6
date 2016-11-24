FROM alpine:3.4

MAINTAINER Dr Zef <drzef85@gmail.com>

COPY rootfs /

ADD https://github.com/just-containers/s6-overlay/releases/download/v1.18.1.5/s6-overlay-amd64.tar.gz  /tmp/
RUN tar xfz /tmp/s6-overlay-amd64.tar.gz -C /
ENTRYPOINT ["/init"]
<