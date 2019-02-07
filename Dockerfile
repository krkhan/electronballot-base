ARG BASEIMAGE=fedora
FROM $BASEIMAGE
USER root
WORKDIR /root
COPY image-prep.sh requirements.txt /root/
RUN ./image-prep.sh

