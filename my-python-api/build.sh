#!/bin/bash

echo -e "---------------------------------------"
echo -e "Cmd to remove all running and stopped container..."
echo -e "---------------------------------------"
docker rm -f $(docker ps -a -q)

echo -e "---------------------------------------"
echo -e "list all running and stopped container..."
echo -e "---------------------------------------"
# 
docker ps -a

echo -e "---------------------------------------"
echo -e "remove all local docker images..."
echo -e "---------------------------------------"
# 
docker image rm -f $(docker images -q)

echo -e "---------------------------------------"
echo -e " list all docker images..."
echo -e "---------------------------------------"
#
docker images

echo -e "---------------------------------------"
echo -e "cmd to build the docker image..."
echo -e "---------------------------------------"
# 
# -t : tag
docker build -t my-app:latest .

echo -e "---------------------------------------"
echo -e "Cmd to run the docker locally ..."
echo -e "---------------------------------------"
# 
# -d - run in background
# -p <hostport>:<container port>
# --name
# -v
docker run -d -p 8080:80 \
    --name=my-app \
     my-app:latest

# open http://localhost:8080


# view image layers
# docker images -a
# docker image inspect my-app -f '{{.RootFS}}'