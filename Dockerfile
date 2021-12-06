FROM alpine:latest

RUN set -ex \
	&& apk upgrade --no-cache \
	&& apk add --no-cache iproute2 \
	&& echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories \
	&& apk add --no-cache bird 

EXPOSE 179/tcp

ENTRYPOINT ["/usr/sbin/bird", "-f"]
