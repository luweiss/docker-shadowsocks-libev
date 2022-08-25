#!/bin/bash

config_file=shadowsocks.conf

function get_value()
{
  param=$1
  value=$(sed -E '/^#.*|^ *$/d' $config_file | awk -F "${param}=" "/${param}=/{print \$2}" | tail -n1)
  echo $value
}


password=$(get_value password)
port=$(get_value port)
method=$(get_value method)
name=$(get_value name)

docker stop $name
docker container rm $name
docker run --restart=always --name $name -e METHOD=$method -e PASSWORD=$password -p$port:8388 -p$port:8388/udp -d shadowsocks/shadowsocks-libev
docker ps | grep $name
echo 'password:' $password
echo 'port:' $port
echo 'method:' $method
echo 'name:' $name
