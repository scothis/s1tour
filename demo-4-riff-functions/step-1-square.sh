#!/bin/bash

# setup

riff function create square \
  --git-repo https://github.com/projectriff-samples/node-square \
  --artifact square.js \
  --verbose

kail -l riff.projectriff.io/function=square \
  -c user-container

# invoke

riff service invoke square --json -- \
  -w '\n' \
  -d 7

  