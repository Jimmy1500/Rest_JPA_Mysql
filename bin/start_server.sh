#! /usr/bin/env bash

docker_file="Dockerfile"
docker_compose_file="docker-compose.yml"

gradle clean build || ./gradlew clean build;
docker build -t avengers/backend:1.0-SNAPSHOT .
docker-compose up

if [ -f $docker_compose_file ]; then
    gawk '
    BEGIN{FS=" "}
    {
        if ($0 ~ "80") {
            print "backend service stopped at localhost:"$NF
        } else if ($0 ~ /[0-9]:[0-9]+$/) {
            print "database stopped at localhost:"$NF
            exit;
        } else {
            next;
        }
    }END{}' < $docker_compose_file
fi
