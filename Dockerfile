ARG ARCH=amd64
FROM ${ARCH}/fedora
USER root
WORKDIR /root
COPY image-prep.sh requirements.txt /root/
RUN ./image-prep.sh

