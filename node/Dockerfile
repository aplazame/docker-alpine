
FROM alpine:3.12

RUN apk add --update \
	zip \
	bash \
	git \
	curl \
	rsync \
	make \
	ca-certificates \
	openssh-client

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

RUN export NVM_DIR="/root/.nvm" && \
	[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

RUN nvm install 8 && \
	nvm install 10 && \
	nvm install 12 && \
	nvm install 14 && \
	nvm use 12 && \
	nvm alias default 12

RUN rm -rf /var/cache/apk/*

ENTRYPOINT /bin/bash