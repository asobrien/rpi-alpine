FROM scratch
MAINTAINER A. O'Brien

ADD https://github.com/nghiant2710/base-os-image-example/blob/master/qemu-arm-static /usr/bin/

ADD rootfs.tar.gz /

RUN apk update && \
    apk upgrade && \
    rm /var/cache/apk/* && \
    apk update

ENTRYPOINT ["/bin/sh"]
