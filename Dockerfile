# syntax=docker/dockerfile:1

FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY *.go ./

# RUN go build -o /docker-gs-ping
# RUN APP_TYPE=gopher ; go build -o /gopher -ldflags "-X main.appType=$APP_TYPE" main.go
RUN go build -o /what-is-my-pod main.go

# EXPOSE 8080

CMD [ "/what-is-my-pod" ]