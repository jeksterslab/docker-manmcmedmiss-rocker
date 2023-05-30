FROM rocker/verse

ADD manMCMedMiss_0.9.2.tar.gz /usr/src/local
COPY scripts/setup.sh /usr/src/local/setup.sh
RUN chmod 777 /usr/src/local/setup.sh         && \
    ./usr/src/local/setup.sh                  && \
    rm -rf /usr/src/local/setup.sh

# author
MAINTAINER "Ivan Jacob Agaloos Pesigan <r.jeksterslab@gmail.com>"

# extra metadata
LABEL version="0.9.2"
LABEL description="manMCMedMiss_0.9.2 rocker/verse container."
