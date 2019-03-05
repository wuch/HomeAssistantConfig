#!/usr/bin/env bash

VIP_USERNAME=$1
VIP_PASSWD=$2
VIP_HOSTNAME=$3

if [ 0 -eq "$#" ]; then
  echo "NO arg"
  echo $@
  source /config/secrets.bash
fi

cmd="/usr/bin/curl -u ${VIP_USERNAME}:${VIP_PASSWD} http://update.virtual-ip.org/nic/update?hostname=${VIP_HOSTNAME} -o result.txt"

echo $cmd
eval $cmd
