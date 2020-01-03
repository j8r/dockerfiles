FROM alpine:3.11

RUN apk add --update --upgrade --no-cache --force-overwrite \
        crystal \
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
        openssl-libs-static \
        pcre-dev \
        readline-dev \
        shards \
        yaml-dev \
        zlib-dev \
        zlib-static \
        xz-dev

ENV LLVM_CONFIG=llvm5-config
