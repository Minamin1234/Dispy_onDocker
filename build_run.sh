#!/bin/bash
docker container stop dispy
docker rm dispy
docker image build -t dispy .
docker container run -it -d --name dispy dispy
docker container exec -it dispy /bin/bash