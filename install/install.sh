#!/bin/bash

dockerBuild(){
  docker-compose up --build --no-color --force-recreate >> envlog/docker-install.log
}

if [ -x "$(command -v docker)" ]; then
    dockerBuild
else
    apt-get -y install docker
    dockerBuild
fi