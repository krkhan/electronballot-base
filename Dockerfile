FROM fedora
USER root
COPY image-prep.sh .
RUN ./image-prep.sh

