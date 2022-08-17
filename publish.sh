#!/bin/bash

set -e

REPOSITORY="ghcr.io/safetyculture"
PLATFORM="linux/amd64,linux/arm64"

WORKATO_SDK_VERSION=$(curl https://api.github.com/repos/workato/workato-connector-sdk/releases/latest | jq -r '.tag_name' | sed -r 's/v//g')

docker buildx build \
  --platform "$PLATFORM" \
  --build-arg WORKATO_SDK_VERSION="$WORKATO_SDK_VERSION" \
  . \
  -t "$REPOSITORY/workato-connector-sdk:$WORKATO_SDK_VERSION" \
  -t "$REPOSITORY/workato-connector-sdk:latest"
