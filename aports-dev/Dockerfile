FROM alpine:edge

RUN apk add --update --upgrade --no-cache --force-overwrite alpine-sdk
RUN echo 'dev    ALL=(ALL) ALL' >> /etc/sudoers
RUN adduser dev -u 1000 -DG abuild
RUN su dev -c 'abuild-keygen -an'
RUN cat /home/dev/.abuild/abuild.conf > /etc/abuild.conf
USER dev
