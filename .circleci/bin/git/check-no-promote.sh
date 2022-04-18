#!/usr/bin/env bash

set -euo pipefail

#######################################
# Checks if the commit message contains a [ No Promote ] tag inside it
#
# Arguments:
#   $1   - The commit message to check
#######################################
checkNoPromote(){
    shopt -s nocasematch

    local RegEx="\[ *no  *promote *\]"
    local string=$1

    if [[ "$string" =~ $RegEx ]]; then
      echo true > is-no-promote
    else
      echo false > is-no-promote
    fi

    shopt -u nocasematch
}

lastCommitMsg="$(git log -1 --pretty=%B)"
checkNoPromote "$lastCommitMsg"
