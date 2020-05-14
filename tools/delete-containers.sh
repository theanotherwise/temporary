#!/bin/bash

docker container stop `docker ps -a | tail -n +2 | awk '{print $1}'`
docker container rm `docker ps -a | tail -n +2 | awk '{print $1}'`
