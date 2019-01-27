FROM fedora
USER root
WORKDIR /root
COPY image-prep.sh requirements.txt .
RUN ./image-prep.sh

