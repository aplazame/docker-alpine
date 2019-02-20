FROM node:10-alpine

RUN apk add --update --no-cache --virtual \
	bash \
	git \
	curl \
	make \
	ca-certificates

RUN rm -rf /var/cache/apk/*

# CMD [ "node" ]

ENTRYPOINT /bin/bash