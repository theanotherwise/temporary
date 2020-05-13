#!/bin/bash

docker image rm `docker images | tail -n +2 | awk '{print $3}'`
