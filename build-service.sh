#!/bin/bash

DOCKERHUB_USERNAME="sudharshan2308"
REPO_NAME="basic-image"

GIT_COMMIT=$(git log -1 --format=%h)

docker build -t ${DOCKERHUB_USERNAME}/${REPO_NAME}:${GIT_COMMIT} --build-arg GIT_COMMIT=${GIT_COMMIT} .

docker login

docker push ${DOCKERHUB_USERNAME}/${REPO_NAME}:${GIT_COMMIT}

docker images
