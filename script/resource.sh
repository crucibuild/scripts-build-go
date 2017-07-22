#!/bin/bash -xe

usage()
{
    echo "$0 <OUT_FILE> <IN_FILES>"
}

if [ $# -lt 2 ]
then
    usage
    exit 1
fi

OUT_FILE="$1"
shift

go get -v "github.com/omeid/go-resources/cmd/resources"
resources -output="$OUT_FILE" -var="Resources" -trim="" "$@"
