#!/bin/bash

set -eux
set -o pipefail

DIR=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)
cd "$DIR"

flags="-X main.buildstamp=`date -u '+%Y-%m-%d_%I:%M:%S%p'` -X main.githash=` git rev-parse --short HEAD`"
go build -ldflags "$flags" -x -o app main.go
./app
