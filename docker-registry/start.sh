#!/bin/bash

docker stop registry
docker rm registry
docker run -d \
    --name registry \
    -p 5000:5000 \
    -v `pwd`/data/registry:/var/lib/registry \
    registry
