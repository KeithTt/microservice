#!/bin/bash

MODULE=$1
TIME=$(date +%Y%m%d%H%M)
GIT_VERISON=%(git log -1 --pretty=format:"%h")
IMAGE_NAME=keithtt/${MODULE}:${TIME}_${GIT_VERISON}

cd ${MODULE}
docker build -t ${IMAGE_NAME}

cd -
docker push ${IMAGE_NAME}

echo ${IMAGE_NAME} > IMAGE_NAME
