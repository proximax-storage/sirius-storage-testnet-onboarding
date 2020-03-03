#!/bin/bash

drive_key='<PRIVATE_KEY>'

docker stop drive
docker rm drive
docker run -d --name drive -p 6366:6466 -p 63666:64666 -v $PWD:/root/.dfms:rw proximax/sirius-storage-dfms:v0.6.4.1 dfms -k $drive_key
