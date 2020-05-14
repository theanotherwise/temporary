#!/bin/bash

docker image rm --force `docker images -a | tail -n +2 | awk '{print $3}'`
