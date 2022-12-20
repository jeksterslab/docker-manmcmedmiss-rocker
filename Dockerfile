FROM rocker/verse

RUN install2.r --error \
  covr                 \
  devtools             \
  ggplot2              \
  knitr                \
  lavaan               \
  lintr                \
  microbenchmark       \
  party                \
  pkgdown              \
  remotes              \
  rhub                 \
  rmarkdown            \
  rprojroot            \
  styler               \
  testthat             \
  tidyverse            \
  tinytex              \
  mice                 \
  DT                   \
  semmcci

RUN R -e "remotes::install_github('jeksterslab/semmcci')"

RUN R -e "remotes::install_version(                           \
      package = 'MASS',                                       \
      version = '7.3-58.1',                                   \
      repos = 'https://packagemanager.rstudio.com/all/latest' \
    )"

RUN R -e "remotes::install_version(                           \
      package = 'mice',                                       \
      version = '3.14.0',                                     \
      repos = 'https://packagemanager.rstudio.com/all/latest' \
    )"

RUN R -e "remotes::install_version(                           \
      package = 'party',                                      \
      version = '1.3-10',                                     \
      repos = 'https://packagemanager.rstudio.com/all/latest' \
    )"

# wget and parallel
RUN apt-get update                                \
    && apt-get install -y --no-install-recommends \
    wget parallel                                 \
    && rm -rf /var/lib/apt/lists/*

# mplus demo
RUN wget https://www.statmodel.com/download/install_mpluslinux_demo64.bin \
    && sh install_mpluslinux_demo64.bin -i silent                         \
    && ln -s /opt/mplusdemo/mpdemo /usr/local/bin/                        \
    && rm -rf install_mpluslinux_demo64.bin

# manMCMedMiss
ADD manMCMedMiss_0.9.2.tar.gz /usr/src/local
RUN R CMD INSTALL /usr/src/local/manMCMedMiss \
    && rm -rf /usr/src/local/manMCMedMiss

# author
MAINTAINER "Ivan Jacob Agaloos Pesigan <r.jeksterslab@gmail.com>"

# extra metadata
LABEL version="0.9.2"
LABEL description="manMCMedMiss_0.9.2 rocker/verse container."
