#!/bin/bash
app="cmsweb-cicd-flask"
docker build --build-arg=COMMIT=$(git rev-parse --short HEAD) -t ${app} .
docker run -d -p 56733:80 \
  --name=${app} \
  -v $PWD:/app ${app}