FROM alpine:3.12.1

ARG VERSION=2.14.0

WORKDIR /tmp

# hadolint ignore=DL3018
RUN apk add --no-cache \
        curl \
        git \
        jq \
        python3 \
        py3-pip \
        && pip3 install --upgrade pip \
        && pip3 install \
        awscli \
        && rm -rf /var/cache/apk/*
        && \
        curl -o /usr/bin/aws-nuke -LJO https://github.com/rebuy-de/aws-nuke/releases/download/v${VERSION}/aws-nuke-v${VERSION}-linux-amd64 && \
        chmod +x /usr/bin/aws-nuke \

RUN adduser -S nroot

USER nroot

ENTRYPOINT [ "/bin/sh" ]
