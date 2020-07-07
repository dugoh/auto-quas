# auto-quas
Initially for a reproducable Quasijarus installation.
Currently simh testing for a specific [issue](https://github.com/simh/simh/issues/706).

It runs the install 8 times to gather stats on how often it fails.

It uses
- circle-ci for Debian stretch and Jessie
- appveyor for windows
- travis-ci for mac and ubuntu

The issue doesn't always show up and is hard to track.
Currently[1] Ubuntu Xenial suffers the most and mac works fine.

[1]
9711fc017be7614a96ebe3759d779ab7de59bb96
