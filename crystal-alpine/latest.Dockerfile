FROM alpine:edge

# Get old shards to avoid memory exhaustion of the new one
RUN wget -qO- https://github.com/crystal-lang/crystal/releases/download/0.31.1/crystal-0.31.1-1-linux-x86_64.tar.gz | tar -zxf -
RUN mv crystal-0.31.1-1/lib/crystal/bin/shards /usr/local/bin
RUN rm -rf crystal-0.31.1-1

RUN apk add --update --upgrade --no-cache --force-overwrite \
        crystal \
        g++ \
        gc-dev \
        git \
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
        openssl-libs-static \
        pcre-dev \
        readline-dev \
        yaml-dev \
        zlib-dev \
        zlib-static
