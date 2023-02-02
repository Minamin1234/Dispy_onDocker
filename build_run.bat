docker container stop dispy
docker rm dispy
docker image build -t dispy .
docker container run --env-file token.txt -v volume_dispy:/home/Apps/Dispy/dispy_volume -it -d --name dispy dispy
docker container exec -it dispy /bin/bash