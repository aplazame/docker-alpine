
FROM alpine:3.8

RUN apk add --update \
	bash \
	git \
	curl \
	make \
	ca-certificates \
	python3

RUN rm -rf /var/cache/apk/*

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py; \
	python3 get-pip.py; \
	rm get-pip.py

ENTRYPOINT /bin/bash

# RUN pip install pipenv
# RUN curl https://pyenv.run | bash
