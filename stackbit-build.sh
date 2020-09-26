#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://api.stackbit.com/project/5f6ed25c8c45e90015c9c632/webhook/build/ssgbuild > /dev/null

next build && next export

curl -s -X POST https://api.stackbit.com/project/5f6ed25c8c45e90015c9c632/webhook/build/publish > /dev/null