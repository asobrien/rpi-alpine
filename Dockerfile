FROM scratch
MAINTAINER A. O'Brien

ADD rootfs.tar.gz /

RUN apk update && \
    apk upgrade && \
    rm /var/cache/apk/*

ENTRYPOINT ["/bin/sh"]
