#!/usr/bin/env bash

mvn clean package

docker build -t keithtt/course-service:latest .
docker push keithtt/course-service:latest