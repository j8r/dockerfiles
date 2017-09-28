FROM alpine:latest

RUN apk add --no-cache openrc \
    && rm -rf "/tmp/"* \
    && echo 'rc_provide="loopback net"' >> /etc/rc.conf \
    && sed -i -e 's/#rc_sys=""/rc_sys="lxc"/g' -e 's/^#\(rc_logger="YES"\)$/\1/' /etc/rc.conf \
    && sed -i '/tty/d' /etc/inittab \
    && sed -i 's/hostname $opts/# hostname $opts/g' /etc/init.d/hostname \
    && sed -i 's/mount -t tmpfs/# mount -t tmpfs/g' /lib/rc/sh/init.sh

ENTRYPOINT ["/sbin/init"]
