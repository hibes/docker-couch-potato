#!/bin/bash

get_version() {
  node -e 'console.log(require("'${SCRIPTS_DIR}'/../package.json").version);'
}

get_docker_image_name() {
  node -e 'console.log(require("'${SCRIPTS_DIR}'/../package.json")["docker-repository"].name);'
}
