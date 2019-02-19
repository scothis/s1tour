#!/bin/bash

riff system install
riff namespace init $NAMESPACE --gcr $PATH_TO_CREDENTIALS

watch -n1 kubectl get ksvc,configuration,route,revision,deployment,pods

kubectl apply -f service.yaml
curl hello.s1tour.scoth.is

# cleanup
kubectl delete ksvc hello
