FROM scratch
MAINTAINER A. O'Brien

ADD qemu-arm-static /usr/bin/

ADD rootfs.tar.gz /

RUN apk update && \
    apk upgrade && \
    rm /var/cache/apk/* && \
    apk update

ENTRYPOINT ["/bin/sh"]
