#!/bin/sh

./compile.sh
s3cmd -c ~/.s3cfg-personal sync docs s3://dump.blackmad.com/an-ink-story/

