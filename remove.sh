#!/bin/bash

config_file=shadowsocks.conf

function get_value()
{
  param=$1
  value=$(sed -E '/^#.*|^ *$/d' $config_file | awk -F "${param}=" "/${param}=/{print \$2}" | tail -n1)
  echo $value
}

name=$(get_value name)

docker stop $name
docker container rm $name
echo 'remove success.'
