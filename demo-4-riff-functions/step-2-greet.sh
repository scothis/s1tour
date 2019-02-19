#!/bin/bash

# setup

riff function create greet \
  --git-repo https://github.com/projectriff-samples/command-hello \
  --artifact greet.sh \
  --verbose

# invoke

riff service invoke greet --text -- \
  -w '\n' \
  -d "Washington"
