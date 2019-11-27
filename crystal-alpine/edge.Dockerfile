FROM alpine:edge

RUN apk add --update --upgrade --no-cache --force-overwrite \
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
        musl-dev \
        openssl-dev \
        openssl-libs-static \
        pcre-dev \
        readline-dev \
        shards \
        yaml-dev \
        zlib-dev \
        zlib-static \
        xz-dev
