# go-what-is-my-pod

You need to launch this application on your Kubernetes cluster in a Pod containing an environment variable called `MY_POD_NAME`.

## Run locally

```
go run main.go
2022/03/01 09:56:21 Listening on localhost:8080
```

## Docker

```
docker build -t scraly/what-is-my-pod:1.0.0 .
docker run -it -p 8080:8080 scraly/what-is-my-pod:1.0.0
docker push scraly/what-is-my-pod:1.0.0
```
