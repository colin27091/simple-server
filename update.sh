#!/bin/bash

cd simple-server
docker stop $1
docker rm $1
docker image rm -f $1
docker build . -t $1
docker run -p 3000:3000 -d --name $1 $1
