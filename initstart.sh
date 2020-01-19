#!/bin/bash

set -eux

if [[ ! -s nginx_conf.d/server.crt ]]; then
    openssl genrsa 2048 > nginx_conf.d/server.key
    openssl req -new -key nginx_conf.d/server.key > nginx_conf.d/server.csr
    openssl x509 -days 3650 -req -signkey nginx_conf.d/server.key < nginx_conf.d/server.csr > nginx_conf.d/server.crt
fi

install -d -m 777 ./grafana_data

# apt install apache2-utils
# yum install httpd-tools
htpasswd -b \
  -c nginx_conf.d/htpasswd \
  $( grep GF_SECURITY_ADMIN_USER docker-compose.yml | awk -F= '{print $2}' ) \
  $( grep GF_SECURITY_ADMIN_PASSWORD docker-compose.yml | awk -F= '{print $2}' )

docker-compose up -d
