#!/usr/bin/env bash

# version=$(git symbolic-ref -q --short HEAD || git describe --tags --exact-match)

version=$(git describe --tags --exact-match 2> /dev/null \
  || git symbolic-ref -q --short HEAD \
  || git rev-parse --short HEAD)

echo "$version"
export VERSION=$version
echo "$VERSION"
