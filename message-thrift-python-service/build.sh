#!/usr/bin/env bash
docker build -t keithtt/message-service:latest .
docker push keithtt/message-service:latest