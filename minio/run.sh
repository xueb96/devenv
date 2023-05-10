#!/bin/sh

docker run -dit --name minio \
--restart unless-stopped \
-e MINIO_ROOT_USER=minioadmin \
-e MINIO_ROOT_PASSWORD=minioadmin \
-p 9000:9000 \
-p 9001:9001 \
-v $PWD/data:/data \
minio/minio \
server /data --console-address ":9001"
