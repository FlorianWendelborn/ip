#!/bin/bash

# config

SITES="/srv/docker/nginx/config/sites-enabled"

# copy

cp ip.conf "$SITES/ip.conf"

# reload nginx

docker exec -it nginx nginx -s reload
