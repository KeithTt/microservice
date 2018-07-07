#!/bin/bash

IMAGE=$(cat IMAGE_NAME)
DEPLOYMENT=$1
MODULE=$2

echo "update image to ${IMAGE}"

kubectl set image deployment ${DEPLOYMENT} ${MODULE}=${IMAGE}
