#!/bin/bash

VERSION=8.0.0

docker login docker.io

docker build -f src/main/docker/Dockerfile.native -t dev.local/burrsutter/todo:$VERSION .

docker tag dev.local/burrsutter/todo:$VERSION docker.io/burrsutter/todo:$VERSION
docker push docker.io/burrsutter/todo:$VERSION



