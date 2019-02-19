#!/bin/bash

# setup

riff channel create replies

riff subscription create \
  --channel squares \
  --subscriber greet --reply-to replies

riff subscription create \
  --channel replies \
  --subscriber correlator

# invoke

riff service invoke correlator /s1tour/numbers --json -- \
  -H "Knative-Blocking-Request: true" \
  -w '\n' -v \
  -d 7
