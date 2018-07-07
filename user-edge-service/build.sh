#!/usr/bin/env bash

mvn clean package

docker build -t keithtt/user-edge-service:latest .
docker push keithtt/user-edge-service:latest