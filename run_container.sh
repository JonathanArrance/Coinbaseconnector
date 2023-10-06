#!/bin/bash -x
docker run -d -p 9002:9002 -p 9000:9000 \
--mount type=bind,source="$(pwd)"/db,target=/db \
-e APIVER='beta' \
-e COINBASE_INTERVAL=30 \
--network container_net \
--name crypto_connector \
crypto_connector:latest

#--mount type=bind,source="$(pwd)"/ssl,target=/etc/api/ssl \
#-e NGINX_PORT=443 \
