#!/usr/bin/env bash
set -e
set -x

# This command can print name in this priority: tag > branch > commit
version=$(git describe --tags --exact-match 2> /dev/null \
  || git symbolic-ref -q --short HEAD \
  || git rev-parse --short HEAD)

export VERSION=$version
echo "$VERSION"

go build -ldflags "-X main.version=$VERSION" -o main