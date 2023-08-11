#!/bin/bash
# build hrp cli binary for testing
# release will be triggered on github actions, see .github/workflows/release.yml

# Usage:
# $ make build
# $ make build tags=opencv
# or
# $ bash scripts/build.sh
# $ bash scripts/build.sh opencv

set -e
set -x

# prepare path
mkdir -p "output"
bin_path="output/hrp"

# optional build tags: opencv
tags=$1
GOOS=$2
GOARCH=$3
#linux amd64
#

# build
if [ -z "$tags" ]; then
    env CGO_ENABLED=0 GOOS=$GOOS GOARCH=$GOARCH go build -ldflags '-s -w' -o "$bin_path" hrp/cmd/cli/main.go
else
    env CGO_ENABLED=0 GOOS=$GOOS GOARCH=$GOARCH go build -ldflags '-s -w' -tags "$tags" -o "$bin_path" hrp/cmd/cli/main.go
fi

# check output and version
ls -lh "$bin_path"
chmod +x "$bin_path"
./"$bin_path" -v
