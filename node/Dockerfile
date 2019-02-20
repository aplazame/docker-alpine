
FROM node:10-alpine

RUN apk add --update \
	bash \
	git \
	curl \
	make \
	ca-certificates

RUN rm -rf /var/cache/apk/*

ENTRYPOINT /bin/bash