# go-what-is-my-pod

You need to launch this application on your Kubernetes cluster in a Pod containing an environment variable called `MY_POD_NAME`.

## Run locally

```
go run main.go
2022/03/01 09:56:21 Listening on localhost:8080
```

## Docker

```
docker build -t scraly/what-is-my-pod:1.0.1 .
docker run -it -p 8080:8080 scraly/what-is-my-pod:1.0.1
docker push scraly/what-is-my-pod:1.0.1
```

## Kubernetes

```
$ kubectl apply -f deployment.yml
deployment.apps/what-is-my-pod-deployment created

$ kubectl expose deployment what-is-my-pod-deployment --name=what-is-my-pod
service/what-is-my-pod exposed

$ stern what-is-my-pod
+ what-is-my-pod-deployment-7b85865ff-wlrvz › what-is-my-pod
what-is-my-pod-deployment-7b85865ff-wlrvz what-is-my-pod 2022/03/01 09:20:04 Listening on localhost:8080
```

## Test

```
curl --cookie-jar cookie.txt --cookie cookie.txt http://<LB_IP>/
```