FROM aplazame/alpine:0.1.10-node

RUN apk add --update \
	zip \
	bash \
	git \
	curl \
	rsync \
	make \
	ca-certificates \
	unzip \
	python3 \
	curl \
    jq \
    gettext \
	openssh-client

RUN ln -sf python3 /usr/bin/python

RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && \
	unzip awscli-bundle.zip &&\
	./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

RUN rm -rf /var/cache/apk/*

COPY bin/ /opt/bin
ENV PATH="/opt/bin:${PATH}"

RUN mkdir ~/.aws/

ENTRYPOINT /bin/bash
