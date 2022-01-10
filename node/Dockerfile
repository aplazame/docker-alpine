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
	openssh-client

RUN rm -rf /var/cache/apk/*

RUN curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o /tmp/awscliv2.zip && \
    unzip -qq /tmp/awscliv2.zip -d /tmp/ && \
    chmod +x /tmp/aws/install && \
    /tmp/aws/install;

COPY bin/ /opt/bin
ENV PATH="/opt/bin:${PATH}"

RUN mkdir ~/.aws/

ENTRYPOINT /bin/bash
