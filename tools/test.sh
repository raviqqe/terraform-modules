#!/bin/sh

set -e

for directory in *; do
  (cd $directory && ./test.sh)
done
