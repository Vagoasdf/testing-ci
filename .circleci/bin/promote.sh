#!/usr/bin/env bash

set -euo pipefail

##Function extracted from \bin\deploy\deploy
stop_previous_versions() {
    echo "Stopping all previous serving versions of $1"
}

service="$(cat /tmp/workspace/service)"
version_name="$(cat /tmp/workspace/version_name)"

echo ""
echo "Split traffic to" "$version_name"
stop_previous_versions "$service"

## We dont worry about Socket or Webserver versions because they were updated at deploy.
