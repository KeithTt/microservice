#!/usr/bin/env bash

mvn clean package

docker build -t keithtt/user-service:latest .
docker push keithtt/user-service:latest