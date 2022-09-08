#!/bin/sh

docker run -dit --name mongo \
-p 27017:27017 \
-e MONGO_INITDB_ROOT_USERNAME=root \
-e MONGO_INITDB_ROOT_PASSWORD=123456 \
-v "$PWD"/data:/data/db \
mongo:5.0
