#!/bin/sh

FILENAME=`basename $1`
echo ./bin/inklecate -o docs/$FILENAME.json $1
./bin/inklecate -o docs/$FILENAME.json $1
