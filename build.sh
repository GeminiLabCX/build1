#!/bin/bash

set -eux
set -o pipefail

DIR=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)
cd "$DIR"

flags="-s -w -X 'main.goversion=$(go version)' -X 'main.buildstamp=`date -u '+%Y-%m-%dT%T%z'`' -X 'main.githash=`git rev-parse --short HEAD`'"
go build -ldflags "$flags" -x -o app main.go
./app

# git describe --abbrev=0 --tags
