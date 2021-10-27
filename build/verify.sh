#!/usr/bin/env bash
set -euo pipefail

DIR=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

cd "$DIR/../test/api/integration"
make build && make run WITH_ARGS="bash -c \"sbt ';validate' && sbt ';verify'\""
