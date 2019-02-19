#!/bin/bash

# setup

watch -n1 kubectl get ksvc,revision,build,pods

riff function create square \
  --git-repo https://github.com/projectriff-samples/node-square \
  --verbose

kail -l riff.projectriff.io/function=square \
  -c user-container

# invoke

riff service invoke square --json -- \
  -w '\n' \
  -d 7

  