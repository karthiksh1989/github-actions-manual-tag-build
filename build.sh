#!/usr/bin/env bash

version=$(git symbolic-ref -q --short HEAD || git describe --tags --exact-match)

echo "$version"
export VERSION=$version