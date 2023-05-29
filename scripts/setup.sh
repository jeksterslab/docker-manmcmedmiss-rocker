#!/bin/bash

set -e

## build ARGs
NCPUS=${NCPUS:--1}

# a function to install apt packages only if they are not installed
function apt_install() {
    if ! dpkg -s "$@" >/dev/null 2>&1; then
        if [ "$(find /var/lib/apt/lists/* | wc -l)" = "0" ]; then
            apt-get update
        fi
        apt-get install -y --no-install-recommends "$@"
    fi
}

apt_install  \
    wget     \
    parallel

install2.r --error --skipinstalled -n "$NCPUS" \
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

R -e "remotes::install_github('jeksterslab/semmcci')"

R -e "remotes::install_version(                             \
    package = 'MASS',                                       \
    version = '7.3-58.1',                                   \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
)"

R -e "remotes::install_version(                             \
    package = 'mice',                                       \
    version = '3.14.0',                                     \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
)"

R -e "remotes::install_version(                             \
    package = 'party',                                      \
    version = '1.3-10',                                     \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
)"

wget https://www.statmodel.com/download/install_mpluslinux_demo64.bin
sh install_mpluslinux_demo64.bin -i silent
ln -s /opt/mplusdemo/mpdemo /usr/local/bin/
rm -rf install_mpluslinux_demo64.bin
