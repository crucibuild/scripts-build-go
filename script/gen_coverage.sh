#!/bin/bash -xe

PROJECT="${PWD#$GOPATH/src/}"

go get golang.org/x/tools/cmd/cover
go get github.com/go-playground/overalls
"${GOPATH}/bin/overalls" -project="$PROJECT"
