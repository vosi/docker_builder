FROM python:3.9-alpine AS builder

RUN set -xe; \
    apk add --no-cache \
		gcc \
		libc-dev \
		make \
		openssl-dev \
		pcre-dev \
		zlib-dev \
		linux-headers \
		curl \
		gnupg1 \
		libxslt-dev \
		libffi-dev \
		openssl-dev \
		postgresql-dev \
		musl-dev \
		rust \
		cargo \
		gd-dev \
		autoconf \
        automake \
        g++ \
        libc6-compat \
        libjpeg-turbo-dev \
        libpng-dev \
        nasm \
		libtool; \
    python -m venv /opt/.venv; \
    /opt/.venv/bin/pip install --upgrade pip setuptools poetry
