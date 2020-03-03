#!/bin/bash

replicator_key='<PRIVATE_KEY>'

docker stop replicator
docker rm replicator
docker run -d --name replicator --network host -v $PWD:/root/.dfmsr:rw proximax/sirius-storage-dfmsr:v0.6.4.1 dfmsr -k $replicator_key
docker exec replicator dfms contract accepting