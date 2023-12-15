#!/usr/bin/env bash

# This is a shell workspace file designed to be sourced and used with
# bash. If you do not use bash, you may still run the commands in this
# file by executing it directly: ./workspace.sh your command here

workspace="herd"


## Run a `rails` command within the container, using docker compose to ensure
## everything is mapped.
herd.rails() {
  herd.run ./bin/rails "$@"
}

herd.run() {
  docker compose run --rm herdapp "$@"
}


# Run a command if this is being executed instead of sourced.
if [[ "$0" =~ .*workspace.sh ]]; then
  funcname="${workspace}.${1}"
  shift 1
  cd $(dirname $0)
  $funcname "$@"
fi
