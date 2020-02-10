#!/bin/bash
docker stop drive
docker rm drive
docker run -d --name drive -p 6366:6466 -p 63666:64666 -v $PWD:/root/.dfms:rw proximax/sirius-storage-drive:v0.6.3 dfms