FROM alpine:latest

RUN echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/main' >>/etc/apk/repositories \
    && echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/community' >>/etc/apk/repositories \
    && apk add --update --no-cache --force-overwrite \
        crystal@edge \
        g++ \
        gc-dev \
        libevent-dev \
        libevent-static \
        libxml2-dev \
        llvm5 \
        llvm5-dev \
        llvm5-libs \
        llvm5-static \
        make \
        musl-dev \
        openssl-dev \
        pcre-dev \
        readline-dev \
        shards \
        yaml-dev \
        zlib-dev

