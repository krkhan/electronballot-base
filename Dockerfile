FROM fedora
USER root
WORKDIR /root
COPY image-prep.sh requirements.txt /root/
RUN ./image-prep.sh

