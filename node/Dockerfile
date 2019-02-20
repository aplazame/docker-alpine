
FROM alpine:3.8

RUN apk add --update \
	bash \
	git \
	curl \
	make \
	ca-certificates \
	nodejs \
	nodejs-npm

RUN rm -rf /var/cache/apk/*

RUN node -v
RUN npm -v

ENTRYPOINT /bin/bash