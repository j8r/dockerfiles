FROM alpine:latest

RUN apk add --update --no-cache --force-overwrite git openssh-client
ADD upload-site.sh /usr/local/bin
CMD ["/usr/local/bin/upload-site.sh"]
