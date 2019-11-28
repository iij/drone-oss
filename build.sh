#!/bin/sh

echo "building docker images for ${GOOS}/${GOARCH} ..."

cd drone
ls -al
REPO="github.com/drone/drone"

# compile the server using the cgo
go build -tags "oss nolimit" -ldflags "-extldflags \"-static\"" -o release/linux/${GOARCH}/drone-server ${REPO}/cmd/drone-server
