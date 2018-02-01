#!/bin/bash -xe

SCRIPT_PATH="$( readlink -f "${BASH_SOURCE[0]}" )"
SCRIPT_DIR="$( dirname "${SCRIPT_PATH}" )"

go get -u github.com/alecthomas/gometalinter
gometalinter --install
gometalinter -j2 --config "${SCRIPT_DIR}/../conf/gometalinter.json" ./...
