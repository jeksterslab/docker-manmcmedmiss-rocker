docker-manmcmedmiss-rocker
==========================
Ivan Jacob Agaloos Pesigan

<!-- badges: start -->
[![Docker Image CI](https://github.com/jeksterslab/docker-manmcmedmiss-rocker/actions/workflows/docker.yaml/badge.svg)](https://github.com/jeksterslab/docker-manmcmedmiss-rocker/actions/workflows/docker.yaml)
<!-- badges: end -->

## Description

A `rocker/rstudio` container for the `manMCMedMiss` project.

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
