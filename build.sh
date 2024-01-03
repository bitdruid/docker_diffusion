#!/bin/bash
IMAGE_NAME="easydiffusion"
docker build -t $IMAGE_NAME .
docker run -d -p 5050:9000 --network docker_bridge --name easydiffusion --device "/dev/dri:/dev/dri" $IMAGE_NAME