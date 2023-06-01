FROM rocker/verse

ADD src /usr/src/local/src
RUN chmod 777 /usr/src/local/src/setup.sh         && \
    ./usr/src/local/src/setup.sh                  && \
    rm -rf /usr/src/local/src

# author
MAINTAINER "Ivan Jacob Agaloos Pesigan <learn.jeksterslab@gmail.com>"

# extra metadata
LABEL version="0.9.2"
LABEL description="manMCMedMiss_0.9.2 rocker/verse container."
