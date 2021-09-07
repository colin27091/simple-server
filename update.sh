#!/bin/bash

docker stop simple-server
docker image rm -f simple-server
docker build . -t simple-server
docker run -p 3000:3000 -d --name simple-server simple-server