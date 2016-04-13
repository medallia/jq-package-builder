#!/bin/bash

# Exit on error
set -e

if [ -z "$VERSION" ]; then
    echo "Need to set VERSION"
    exit 1
fi

# Download the desired release from github
wget https://github.com/stedolan/jq/releases/download/jq-${VERSION}/jq-linux64 -O /usr/bin/jq

# Create the packages
fpm -s dir -t deb -n "jq" -v ${VERSION} -p /dist /usr/bin/jq
fpm -s dir -t rpm -n "jq" -v ${VERSION} -p /dist /usr/bin/jq

exit 0
