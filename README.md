# auto-quas
Initially for a reproducable Quasijarus installation.
Currently simh testing for a specific [issue](https://github.com/simh/simh/issues/706).

It runs the install 8 times to gather stats on how often it fails.

It uses
- circle-ci for Debian stretch and jessie
- appveyor for windows visual studio 2019
- travis-ci for mac 10.13-xcode9.4/macOS, 10.14/xcode10.2 and ubuntu Xenial, Trusty and Bionic
- cirrus-ci for freebsd-12-1-release-amd64

The issue doesn't always show up and is hard to track.
Currently[1] Ubuntu Xenial suffers the most and mac works fine.

[1]
9711fc017be7614a96ebe3759d779ab7de59bb96
