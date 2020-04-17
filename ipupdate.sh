#!/bin/ash
set -e


if [ -z "$USERNAME" ]; then
  echo "\$USERNAME is not set!"
  exit 1
fi

if [ -z "$APIKEY" ]; then
  echo "\$APIKEY is not set!"
  exit 1
fi

if [ -z "$TUNNELID" ]; then
  echo "\$TUNNELID is not set!"
  exit 1
fi

if [ -z "$DELAY" ]; then
  echo "\$DELAY is not set!"
  exit 1
fi



curl -s https://${USERNAME}:${APIKEY}@ipv4.tunnelbroker.net/nic/update?hostname=${TUNNELID}

sleep ${DELAY}


