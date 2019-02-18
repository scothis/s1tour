build:

```
docker build -t scothis/curl:s1tour .
```

run:

```
kubectl run -it --rm shell --generator=run-pod/v1 --image=scothis/curl:s1tour -- bash
```
