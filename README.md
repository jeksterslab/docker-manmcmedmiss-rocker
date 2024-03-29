docker-manmcmedmiss-rocker
==========================
Ivan Jacob Agaloos Pesigan

<!-- badges: start -->
[![Docker Build](https://github.com/jeksterslab/docker-manmcmedmiss-rocker/actions/workflows/docker-build.yml/badge.svg)](https://github.com/jeksterslab/docker-manmcmedmiss-rocker/actions/workflows/docker-build.yml)
<!-- badges: end -->

## Description

A Docker container for the [manMCMedMiss](https://github.com/jeksterslab/manMCMedMiss) project based on the [Rocker Project](https://rocker-project.org/).

## Build

To build the container, run the following.

```bash
git clone https://github.com/jeksterslab/docker-manmcmedmiss-rocker.git
cd docker-manmcmedmiss-rocker
docker build -t manmcmedmiss-rocker .
```

## Run

To launch `Rstudio Server`, run the following.

```bash
docker run --rm -ti -e PASSWORD=yourpassword -p 8787:8787 manmcmedmiss-rocker
```

Open `http://localhost:8787` on your web browser to launch `Rstudio Server`.

- username: rstudio
- password: yourpassword
