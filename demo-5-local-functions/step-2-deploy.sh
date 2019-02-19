#!/bin/bash

# setup

riff function create uppercase \
  --local-path ./uppercase \
  --verbose

# invoke

riff service invoke uppercase --text -- \
  -w '\n' \
  -d 'shh!'
 