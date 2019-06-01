#!/bin/bash

set +x 
  
export HOST_IP=`hostname -I | cut -d' ' -f 1`

echo "Copying prometheus config file to /home/jahn/prometheus/"
cp -f prometheus.yml /home/jahn/prometheus/

echo "Setting stack IP to $HOST_IP"

docker stack deploy -c docker-stack-arm64v8.yml prometheus-grafana

