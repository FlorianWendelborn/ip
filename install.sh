#!/bin/bash

# config

SITES="/srv/docker/nginx/config/sites-enabled"

# copy

cp ip.conf "$SITES/ip.conf"

# docker

docker build -t dodekeract/ip .
docker run \
	--name ip \
	-p 45002:80 \
	-d dodekeract/ip

# reload nginx

docker exec -it nginx nginx -s reload
