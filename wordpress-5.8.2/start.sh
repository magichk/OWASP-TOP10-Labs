#!/bin/bash

docker container stop test
docker image rm wp
docker build . -t wp
docker run -d --name test -p 80:80 --rm wp:latest
docker exec -it test bash
