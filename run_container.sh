#!/bin/bash -x
docker run -d -p 9029:9029 -p 9030:9030 \
--mount type=bind,source="$(pwd)"/db,target=/db \
--mount type=bind,source="$(pwd)"/ssl,target=/etc/api/ssl \
-e APIVER='beta' \
-e COINBASE_INTERVAL=30 \
--network container_net \
--name coinbase_collector \
coinbase_collector:latest

#--mount type=bind,source="$(pwd)"/ssl,target=/etc/api/ssl \
#-e NGINX_PORT=443 \
