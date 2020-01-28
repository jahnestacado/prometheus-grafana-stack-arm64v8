#!/bin/bash

set +x 
  
export HOST_IP=`hostname -I | cut -d' ' -f 1`

echo "Copying prometheus config file to /home/jahn/prometheus/"
cp -f prometheus.yml /mnt/shared/prometheus/

echo "Setting stack IP to $HOST_IP"
ls
docker stack deploy -c docker-stack-armv64v8.yml monitoring

