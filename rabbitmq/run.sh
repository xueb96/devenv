#!/bin/sh

docker run -dit --name rabbitmq \
--hostname rabbit \
--restart unless-stopped \
-p 5672:5672 \
-p 15672:15672 \
-e RABBITMQ_DEFAULT_USER=root \
-e RABBITMQ_DEFAULT_PASS=123456 \
-v $PWD/data:/var/lib/rabbitmq \
rabbitmq:management-alpine

