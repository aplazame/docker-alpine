FROM alpine:3.12.1

ARG VERSION=2.14.0

WORKDIR /tmp

# hadolint ignore=DL3018
RUN apk add --no-cache \
        curl \
        git && \
        curl -o /usr/bin/aws-nuke -LJO https://github.com/rebuy-de/aws-nuke/releases/download/v${VERSION}/aws-nuke-v${VERSION}-linux-amd64 && \
        chmod +x /usr/bin/aws-nuke

RUN adduser -S nroot

USER nroot

ENTRYPOINT [ "/bin/sh" ]
