#!/usr/bin/env bash

set -x

# HASH=$1
# TAG=$2
TAG=$1

# test -z "${HASH}" -o -z "${TAG}" && echo "Usage: $0 IMAGE-HASH IMAGE-TAG" && exit 1

# docker tag ${HASH} ${TAG} # I: Double quote to prevent globbing and word splitting.
docker save ${TAG} | gzip -9 > $(echo ${TAG} | sed 's,:,.,').tar.gz

