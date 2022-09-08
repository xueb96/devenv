#!/bin/sh

docker run -dit --name mysql \
--restart unless-stopped \
-e MYSQL_ROOT_PASSWORD=123456 \
-p 3306:3306 \
-v $PWD/data:/var/lib/mysql \
mysql:8.0
