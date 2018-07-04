#!/usr/bin/env bash

mvn package

docker build -t keithtt/api-gateway-zuul:latest .

docker push keithtt/api-gateway-zuul:latest