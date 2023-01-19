#
# Dockerfile from stunnel
#

FROM alpine:edge
MAINTAINER EasyPi Software Foundation

RUN apk add --no-cache stunnel

RUN mkdir -p /etc/stunnel
VOLUME /etc/stunnel/

#WORKDIR /etc/stunnel/

ADD ./data/stunnel.conf /etc/stunnel/stunnel.conf
ADD ./data/stunnel.key /etc/stunnel/stunnel.key

EXPOSE 443
CMD ["stunnel", "./data/server.conf"]
