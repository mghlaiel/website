#!/bin/sh

# this script is used to allow deployment of container images to kind whithout use of online registries

docker build -t creometrymkdocs:0.0.2 .
kind load docker-image creometrymkdocs:0.0.2
kubectl delete -f manifests/deployment-dev.yaml
kubectl apply -f manifests/deployment-dev.yaml
kubectl get pods