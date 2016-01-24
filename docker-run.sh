# !/bin/sh

docker run --name dockerized-container -d -p 3000:3000 -v /Users/joerter/bench/dockerized/:/usr/src/app dockerized npm start 
