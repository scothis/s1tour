#!/bin/bash

# setup

watch -n1 kubectl get channel,subscription,ksvc,pods

riff channel create numbers
riff channel create squares

riff subscription create \
  --channel numbers \
  --subscriber square \
  --reply squares

riff service create correlator \
  --image scothis/correlator:s1tour

kail -l riff.projectriff.io/function=square \
  -c user-container

# invoke

riff service invoke correlator /s1tour/numbers --json -- \
  -w '\n' -v \
  -d 7
