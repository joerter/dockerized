FROM node:5.5.0

EXPOSE 3000

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app
