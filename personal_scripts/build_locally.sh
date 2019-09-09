#!/usr/bin/env bash

# Prereqs

# ensure GOPATH is set to a directory that has kubernetes project ex:
# GOPATH=/home/jkieley/go/
#
# Autoscaler project exists Here:
#           /home/jkieley/go/src/k8s.io/autoscaler
# Kubernetes project exists Here:
#           /home/jkieley/go/src/k8s.io/kubernetes
# go version go version go1.12.9 linux/amd64

#execute from ex: /home/jkieley/go/src/k8s.io/autoscaler/cluster-autoscaler

# download dep
go get -v ./...

# execute tests
go test ./...

# build
export GOOS=linux

# build executable
go build -o cluster-autoscaler
