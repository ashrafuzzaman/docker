#!/usr/bin/env bash

set -e
set -x

clean() {
  echo "Deleting stopped containers"
  docker rm $(docker ps -a -q) || true
  echo "Deleting untagged images"
  docker rmi $(docker images -q -f dangling=true) || true
}

build() {
  echo "Building docker container"
  docker build --rm=true -t $IMAGE_PATH .
  clean
}

push() {
  echo "Pushing to hub"
  docker push $IMAGE_PATH
  clean
}

squash() {
  echo "Squashing image :: $IMAGE_PATH"
  CONTAINER=$(docker run -d $IMAGE_PATH)
  docker export $CONTAINER | docker import - $IMAGE_PATH-squashed
}

case "$1" in
    build | push | squash)
        $*
        ;;
    *)
        echo "Usage: $0 build | push | squash"
        ;;
esac
