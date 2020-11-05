FROM alpine:3.12

RUN apk add --no-cache --update \
	bash \
	git \
	curl \
	rsync \
	zip \
	make \
	ca-certificates \
	jq \
	gettext\
	python3\
	py3-pip

RUN pip3 install awscli ecs-deploy jose5

RUN curl -sL https://sentry.io/get-cli/ | bash

COPY .aws /root/.aws

ENTRYPOINT /bin/bash
