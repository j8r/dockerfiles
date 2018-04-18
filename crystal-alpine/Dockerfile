FROM alpine:edge

RUN echo http://public.portalier.com/alpine/testing >> /etc/apk/repositories
RUN wget http://public.portalier.com/alpine/julien%40portalier.com-56dab02e.rsa.pub -O /etc/apk/keys/julien@portalier.com-56dab02e.rsa.pub

RUN apk add --update --no-cache crystal shards g++ gc-dev libc-dev libevent-dev libxml2-dev llvm llvm-dev llvm-libs llvm-static make openssl openssl-dev pcre-dev readline-dev yaml-dev zlib-dev
