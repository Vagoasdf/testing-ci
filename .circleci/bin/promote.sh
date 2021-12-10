#!/usr/bin/env bash

set -euo pipefail
. submodules/lib/gcloud.sh

##Function extracted from \bin\deploy\deploy
stop_previous_versions() {
    echo "Stopping all previous serving versions of $1"
}

service= $(cat workspace/version_name)
version_name= $(cat workspace/service)

echo ""
echo "Split traffic to" "$version_name"
stop_previous_versions "$service"

## We dont worry about Socket or Webserver versions because they were updated at deploy.
