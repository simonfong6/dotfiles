#!/usr/bin/env zsh

REPOSITORY_URL='https://raw.githubusercontent.com/simonfong6/template-service/main'

bootstrap-file() {
  # Fetches the file from that path and saves it with the same path.
  FILE_PATH=$1

  URL="$REPOSITORY_URL/$FILE_PATH"
  wget $URL -O $FILE_PATH
}

bootstrap() {
  mkdir -p .buildkite
  bootstrap-file .buildkite/pipeline.yml

  mkdir -p kubernetes
  bootstrap-file kubernetes/deployment.yml
  bootstrap-file kubernetes/service.yml

  mkdir -p docker
  bootstrap-file docker/Dockerfile
  bootstrap-file docker-compose.yml
}
