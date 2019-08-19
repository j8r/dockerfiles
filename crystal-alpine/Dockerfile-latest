FROM alpine:edge

RUN echo '@v3.9 http://dl-cdn.alpinelinux.org/alpine/v3.9/community' >>/etc/apk/repositories \
    && apk add --update --no-cache --force-overwrite \
        crystal \
        g++ \
        gc-dev \
        libevent-dev \
        libevent-static \
        libxml2-dev \
        llvm8 \
        llvm8-dev \
        llvm8-libs \
        llvm8-static \
        make \
        musl \
        musl-dev \
        musl-utils \
        openssl-dev \
        pcre-dev \
        readline-dev \
        shards@v3.9 \
        yaml-dev \
        zlib-dev
