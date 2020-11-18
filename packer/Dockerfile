FROM hashicorp/packer:1.6.5

WORKDIR /tmp

# hadolint ignore=DL3018
RUN apk add --no-cache --update \
	bash \
	git \
	curl \
	gettext \
	python3 \
	py3-pip \
    ansible \
    openssh-client \
    jq

RUN adduser -S nroot

RUN pip3 install awscli==1.18.177

USER nroot

ENTRYPOINT [ "/bin/bash" ]
