#!/bin/bash -x

dnf install -y \
	procps \
	gcc \
	vim \
	sudo \
	bind-utils \
	nc \
	iproute \
	git \
	php \
	php-mbstring \
	python-pip \
	redhat-rpm-config \
	python-devel \
	zlib-devel \
	libjpeg-devel \
	openssl-devel \
	libffi-devel \
	openssl-devel \
	php-json \
	ImageMagick-devel

pip install --upgrade pip setuptools
while [ "$?" -ne "0" ]; do
	pip install --upgrade pip setuptools
done

pip install -r requirements.txt
while [ "$?" -ne "0" ]; do
	pip install -r requirements.txt
done

git clone https://github.com/bastianraschke/pyfingerprint.git
(cd pyfingerprint/src; pip install .)

git clone https://github.com/mike42/escpos-php.git

