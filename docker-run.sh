# !/bin/sh

pwd=$(pwd)
ip=$(docker-machine ip default)
docker run --name dockerized-container -d -p 3000:3000 -v $pwd:/usr/src/app dockerized npm start && \
echo "IP Address: $ip" && \
docker attach --sig-proxy=false dockerized-container
