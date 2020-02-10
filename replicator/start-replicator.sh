#!/bin/bash
docker stop replicator
docker rm replicator
docker run -d --name replicator --network host -v $PWD:/root/.dfmsr:rw proximax/sirius-storage-replicator:v0.6.3 dfms
docker exec replicator dfms contract accepting