#!/bin/bash

trap 'docker-compose down' TERM INT
docker-compose up &
PID=$!
wait $PID
trap - TERM INT
wait $PID
EXIT_STATUS=$?