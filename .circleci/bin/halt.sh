#!/usr/bin/env bash

set -euo pipefail


if ss -atpn | grep -P '\*:\*.*circleci-agent' &> /dev/null; then
  echo "SSH debug session is active. Using exit to halt job"
  exit 1
else
  echo "SSH debug session is not active. Using circleci-agent to halt job"
  circleci-agent step halt
fi
