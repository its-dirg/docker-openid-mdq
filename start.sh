#!/bin/sh

if [ -z "${HOST}" ]; then
    export HOST="0.0.0.0"
fi

if [ -z "${FILE}" ]; then
  export FILE="clients.json"
fi

if [ -z "${FREQUENCY}" ]; then
  export FREQUENCY="3600"
fi

openid-mdq -H ${HOST} --frequency ${FREQUENCY} ${FILE}
