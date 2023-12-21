#!/bin/sh

set -ex

for path in */main.tf; do
  (
    cd $(dirname $path)

    terraform init
    terraform validate
  )
done
