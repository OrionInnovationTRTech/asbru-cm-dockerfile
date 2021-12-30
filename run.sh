#!/bin/bash

MY_XAUTH=$(xauth list | grep "unix: " | sed "s/unix:/unix:0/g")

docker build -t asbru .
docker run -it --rm -e MY_XAUTH="$MY_XAUTH" --volume $(pwd)/root:/root --net=host -e DISPLAY -v /tmp/.X11-unix asbru
