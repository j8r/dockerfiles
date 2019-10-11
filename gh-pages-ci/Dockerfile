FROM alpine:latest

RUN apk add --update --no-cache --force-overwrite git openssh-client
ADD upload-docs.sh /usr/local/bin
CMD ["/usr/local/bin/upload-docs.sh"]
