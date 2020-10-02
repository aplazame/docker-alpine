
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

ENV NVM_DIR="/root/.nvm"
# RUN [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
RUN source $NVM_DIR/nvm.sh

ENV DEFAULT_NODE_VERSION=12

RUN nvm install $DEFAULT_NODE_VERSION && \
	nvm use $DEFAULT_NODE_VERSION && \
	nvm alias default $DEFAULT_NODE_VERSION

RUN rm -rf /var/cache/apk/*

ENTRYPOINT /bin/bash