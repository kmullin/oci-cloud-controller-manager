#!/bin/bash

set -ue

REGISTRY=${REGISTRY:-$1}
VERSION=${VERSION:-$2}

export CI_IMAGE_REGISTRY=$REGISTRY/oracle
export OSS_REGISTRY=$REGISTRY/oracle
export VERSION

# build it and push it
make build image docker-push-all
