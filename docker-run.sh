# !/bin/sh

pwd=$(pwd)
docker run --name dockerized-container -d -p 3000:3000 -v $pwd:/usr/src/app dockerized npm start 
