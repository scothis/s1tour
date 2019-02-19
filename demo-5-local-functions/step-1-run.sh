#!/bin/bash

# setup

riff function local run \
  --local-path ./uppercase \
  --port 8000:8080

# invoke

curl localhost:8080 \
  -H 'Content-Type: text/plain' \
  -w '\n' \
  -d 'shhh!'
