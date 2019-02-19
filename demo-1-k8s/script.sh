#!/bin/bash

watch -n1 kubectl get svc,pods -o wide

kubectl create -f pod.yaml

kubectl run -it --rm shell --generator=run-pod/v1 --image=scothis/curl:s1tour -n default -- bash

curl 10.1.x.x:8080

kubectl create -f pod.yaml
kubectl create -f pod.yaml

curl 10.1.x.x:8080
# ...

kubectl create -f service.yaml

curl hello.s1tour.svc.cluster.local
# ...
watch -d -n1 "curl hello.s1tour.svc.cluster.local 2> /dev/null"

kubectl create -f evil.yaml
# wait for evil pod to be invoked by curl

kubectl delete pod -l app=hello
watch -n1 kubectl get svc,hpa,deployment,rs,pod

kubectl create -f deployment.yaml
kubectl scale deployment/hello --replicas 3
kubectl scale deployment/hello --replicas 0
kubectl scale deployment/hello --replicas 1

kubectl create -f autoscaler.yaml

kubectl scale deployment/hello --replicas 10

# reset namespace
kubectl delete all --all
