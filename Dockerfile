#
# Dockerfile from stunnel
#

FROM alpine:edge
MAINTAINER EasyPi Software Foundation

RUN apk add --no-cache stunnel

RUN mkdir -p /etc/stunnel
VOLUME /etc/stunnel/

#WORKDIR /etc/stunnel/

ADD ./data/stunnel.crt /etc/stunnel/stunnel.crt
ADD ./data/stunnel.key /etc/stunnel/stunnel.key
ADD ./data/server.conf /etc/stunnel/server.conf

EXPOSE 443
CMD ["stunnel", "/etc/stunnel/server.conf"]
