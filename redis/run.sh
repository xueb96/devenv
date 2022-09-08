#!/bin/sh

docker run -dit --name redis \
--restart unless-stopped \
-p 6379:6379 \
-v $PWD/data:/data \
redis:alpine \
redis-server
