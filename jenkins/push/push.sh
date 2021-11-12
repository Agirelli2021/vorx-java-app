#!/bin/bash
echo "********************"
echo "** Pushing image ***"
echo "********************"
IMAGE="maven-project"
echo "** Logging in ***"
docker login -u 100310100310 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG 100310100310/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push 100310100310/$IMAGE:$BUILD_TAG
