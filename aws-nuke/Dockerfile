FROM alpine:3.12.1

ARG VERSION=2.15.0

WORKDIR /tmp

# hadolint ignore=DL3018
RUN apk add --no-cache \
        curl \
        git \
        jq \
        bash \
        python3 \
        py3-pip \
    && pip3 install --no-cache-dir --upgrade pip awscli \
    && curl -o /tmp/aws-nuke.tar.gz -LJO https://github.com/rebuy-de/aws-nuke/releases/download/v${VERSION}/aws-nuke-v${VERSION}-linux-amd64.tar.gz && \
    tar -xvf aws-nuke.tar.gz && \
    mv aws-nuke-v${VERSION}-linux-amd64 /usr/local/bin/aws-nuke

RUN adduser -S jenkins

USER jenkins

ENTRYPOINT [ "/bin/bash" ]
