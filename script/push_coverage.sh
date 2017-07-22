#!/bin/bash -xe

go get github.com/mattn/goveralls
"${GOPATH}/bin/goveralls" -coverprofile=overalls.coverprofile -service=travis-ci
