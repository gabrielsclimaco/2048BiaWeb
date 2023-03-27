#!/usr/bin/env bash

set -e

# Export configs
export LANG=C.UTF-8
export WHITE='\033[1m\033[0;97m'
export BLACK='\033[1m\033[0;90m'
export CYAN='\033[1;36m'
export MAGENTA='\033[1;35m'
export GREEN='\033[0;32m'
export RED='\033[0;31m'
export YELLOW='\033[0;33m'
export RED_BG='\033[0;41m'
export NC='\033[0m'

export BUCKET="s3://2048-bia-web"
export DISTRIBUTION_ID="E8TH5F8A0QD5C"

echo -e "Deploying with environment credentials..."
aws s3 sync . $BUCKET --delete
aws cloudfront create-invalidation --distribution-id $DISTRIBUTION_ID --paths '/*'
