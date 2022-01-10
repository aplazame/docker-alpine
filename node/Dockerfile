FROM node:12-alpine

RUN apk add --update \
	zip \
	bash \
	git \
	curl \
	rsync \
	make \
	ca-certificates \
	unzip \
    jq \
    gettext \
	openssh-client \
	aws-cli 

RUN rm -rf /var/cache/apk/*


COPY bin/ /opt/bin
ENV PATH="/opt/bin:${PATH}"

RUN mkdir ~/.aws/

ENTRYPOINT /bin/bash
