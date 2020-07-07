# auto-quas
Initially for a reproducable Quasijarus installation.
Currently simh testing for a specific [issue](https://github.com/simh/simh/issues/706).

It runs the install 8 times to gather stats on how often it fails.


This repo is edited in the github UI with reckless abandon and utter disregard for a sensible commit history. 
At the moment the badges don't mean much, they are just a quick link to the build log.

- circle-ci [![dugoh](https://circleci.com/gh/dugoh/auto-quas.svg?style=svg)](https://circleci.com/gh/dugoh/auto-quas)
  - Debian 
    - stretch
    - jessie
- appveyor [![AppVeyor](https://ci.appveyor.com/api/projects/status/github/dugoh/auto-quas)](https://ci.appveyor.com/project/dugoh/auto-quas/history)
  - Windows
    - visual studio 2019
- travis-ci [![Build Status](https://travis-ci.org/dugoh/auto-quas.svg)](https://travis-ci.org/dugoh/auto-quas)
  - Mac
    - MacOS10.13-xcode9.4
    - macOS10.14-xcode10.2
    - macOS10.15.5-xcode12.0
  - Ubuntu
    - Xenial
    - Trusty
    - Bionic
- cirrus-ci [![Build Status](https://api.cirrus-ci.com/github/dugoh/auto-quas.svg)](https://cirrus-ci.com/github/dugoh/auto-quas)
  - FreeBSD
    - 12.1-release-amd64

The issue doesn't always show up and is hard to track.
Currently[1] Ubuntu Xenial suffers the most and mac works fine.

[1]
9711fc017be7614a96ebe3759d779ab7de59bb96
