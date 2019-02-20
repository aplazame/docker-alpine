
FROM alpine:3.8

RUN apk update

RUN apk add \
	bash \
	nodejs \
	nodejs-npm \
	make \
	git

RUN node -v
RUN npm -v

RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*

ENTRYPOINT /bin/bash