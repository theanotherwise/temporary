#!/bin/bash

docker image rm `docker images -a | tail -n +2 | awk '{print $3}'`
