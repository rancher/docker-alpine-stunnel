FROM alpine:3.1

MAINTAINER Engineering "<engineering@rancher.com>"

RUN echo "http://dl-3.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories
RUN apk update && apk add --update stunnel

ADD ./garantia_ca.pem /etc/stunnel/ca.pem

ADD ./entry.sh /entry.sh
RUN chmod +x /entry.sh

EXPOSE 6379

ENTRYPOINT ["/entry.sh"]
