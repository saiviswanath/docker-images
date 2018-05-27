#!/bin/bash

set -x
set -m

/entrypoint.sh couchbase-server &

sleep 15

curl -X POST -u Administrator:password -d "name=default" -d "ramQuotaMB=20"0 -d "authType=none" -d "replicaNumber=0" -d "proxyPort=11216" "http://127.0.0.1:8091/pools/default/buckets"


fg 1
