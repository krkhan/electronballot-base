#!/bin/sh

docker build --build-arg BASEIMAGE=arm32v7/fedora -t krkhan/electronballot-base:arm .

