
FROM node:10-alpine

RUN apk add --update \
	zip \
	bash \
	git \
	curl \
	rsync \
	make \
	ca-certificates \
	openssh-client

RUN rm -rf /var/cache/apk/*

ENTRYPOINT /bin/bash