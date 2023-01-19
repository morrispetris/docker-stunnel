#
# Dockerfile from stunnel
#

FROM alpine:edge
MAINTAINER EasyPi Software Foundation

RUN apk add --no-cache stunnel

WORKDIR /etc/stunnel/
COPY . /etc/stunnel/
VOLUME /etc/stunnel/

EXPOSE 443
CMD ["stunnel", "./data/server.conf"]
