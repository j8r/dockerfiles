FROM alpine:edge

RUN apk add --update abuild gcc
RUN adduser dev -u 1000 -DG abuild
RUN su dev -c 'abuild-keygen -an'
RUN cat /home/dev/.abuild/abuild.conf > /etc/abuild.conf
