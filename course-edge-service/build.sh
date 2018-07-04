#!/usr/bin/env bash

mvn clean package

docker build -t keithtt/course-edge-service:latest .
docker push keithtt/course-edge-service:latest