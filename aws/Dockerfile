
FROM alpine:3.8

RUN apk add --update \
	bash \
	curl \
	git \
	python3

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py; \
	python3 get-pip.py; \
	rm get-pip.py

RUN curl https://pyenv.run | bash

RUN pip install awscli

ENTRYPOINT /bin/bash