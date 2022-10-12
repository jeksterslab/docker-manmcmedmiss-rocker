#! /usr/bin/bash

git clone git@github.com:jeksterslab/docker-manmcmedmiss-rocker.git
rm -rf "$PWD.git"
mv docker-manmcmedmiss-rocker/.git $PWD
rm -rf docker-manmcmedmiss-rocker
