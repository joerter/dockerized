# !/bin/sh

docker run --name dockerized-container -d -p 3000:3000 dockerized node server.js
